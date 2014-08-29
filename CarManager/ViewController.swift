//
//  ViewController.swift
//  CarManager
//
//  Created by Ricardo Alexandre Franco da Cruz on 26/08/14.
//  Copyright (c) 2014 CruzLabs. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let carArray = ["208", "308", "408", "C3", "C4", "Civic", "Elantra", "Fiesta", "Fit", "Focus", "Gol", "Ka", "Siena", "Sonata", "Uno"]
    let carMakers = ["Peugeot", "Peugeot", "Peugeot", "Citroen", "Citroen", "Honda", "Hyundai", "Ford", "Honda", "Ford", "Volkswagen", "Ford", "Fiat", "Hyundai", "Fiat"]
    let carImages = ["208", "308", "208", "308", "208", "308", "208", "308", "208", "308", "208", "308", "208", "308", "208"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: Implementacoes
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
         var cellID = "TableViewCell"
        
        var cell : TableViewCell? = tableView?.dequeueReusableCellWithIdentifier(cellID)
         as? TableViewCell
        
        if (cell == nil) {
            var nib:Array = NSBundle.mainBundle().loadNibNamed("TableCell", owner: self, options: nil)
            cell = (nib[0] as TableViewCell)
        }
        
        cell?.nameCell.text = carArray[indexPath.row]
        cell?.makerCell.text = carMakers[indexPath.row]
        //cell!.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell?.yearCell.text = "2014"
        cell?.valueCell.text = "R$50.000"
        var image:UIImage = UIImage(named: carImages[indexPath.row])
        cell?.imageCell.image = image
        var background:UIImage = UIImage(named: "leather-background.png")
        cell?.backgroundView = UIImageView(image: background)
        return cell
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return carArray.count
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 90
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        var cell:TableViewCell = tableView.cellForRowAtIndexPath(indexPath) as TableViewCell
        println("Row selected - \(cell.nameCell.text)")
    }

}

