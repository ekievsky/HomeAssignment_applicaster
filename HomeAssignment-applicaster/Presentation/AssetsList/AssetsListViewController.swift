//
//  AssetsListViewController.swift
//  HomeAssignment-applicaster
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class AssetsListViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet private var searchBar: UISearchBar!
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var activityIndicator: UIActivityIndicatorView!
    
    //MARK: - Components
    var viewModel: AssetsListViewModeling!
    var router: Routing!
    
    //MARK: - Private
    private let dataSource = AssetsListDataSource()
    private let disposeBag = DisposeBag()

    //MARK: - Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100
        title = Strings.AssetsList.title
        bind()
        viewModel.viewDidLoad.onNext(())
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        activityIndicator.center = view.center
    }
    
    //MARK: - Binding
    private func bind() {
        
        // MARK: Input
        tableView.rx
            .setDelegate(dataSource)
            .disposed(by: disposeBag)
        
        tableView.rx.itemSelected
            .bind(to: viewModel.didSelectRow)
            .disposed(by: disposeBag)
        
        searchBar.rx.text
            .bind(to: viewModel.searchBarTextChanged)
            .disposed(by: disposeBag)
        
        // MARK: Output
        
        viewModel.isLoading
            .drive(activityIndicator.rx.isAnimating)
            .disposed(by: disposeBag)
        
        viewModel.items
            .drive(tableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
        
        viewModel.routeToWebView
            .drive(onNext: { [weak self] urlString in
                self?.router?.route(to: .assetWebView(urlString: urlString), isModal: false)
            })
            .disposed(by: disposeBag)
        
        viewModel.routeToAssetVideoPlayer
            .drive(onNext: { [weak self] urlString in
                self?.router?.route(to: .assetVideoPlayer(urlString: urlString), isModal: true)
            })
            .disposed(by: disposeBag)
    }
}

private class AssetsListDataSource: NSObject, UITableViewDataSource, UITableViewDelegate, RxTableViewDataSourceType {

    typealias Element = [AssetListItem]

    private var items: Element = []

    // MARK: RxTableViewDataSourceType

    func tableView(_ tableView: UITableView, observedEvent: Event<[AssetListItem]>) {
        
        if case .next(let items) = observedEvent {
            self.items = items
            tableView.reloadData()
        }
    }

    // MARK: Data Source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AssetListItemTableViewCell", for: indexPath) as! AssetListItemTableViewCell
        cell.setup(with: items[indexPath.row])
        return cell
    }

    // MARK: Delegate

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

