//
//  ViewController.swift
//  AprendiendoTablas
//
//  Created by Juanse Vargas on 28/01/21.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Referencia de la tabla
    @IBOutlet weak var tableView: UITableView!
    
    /*
     1. Implementar DataSource <- interfaz
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // ¡¡ No olvidar :)
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda") // Le estamos diciendo a la tabla que registre esta celda con este identificador: "mi-celda"
        
        // Para implementar el Delegate
        tableView.delegate = self
        
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda \(indexPath.row) fue seleccionada")
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource
{
    // 1. Número de filas que tendrá la tabla.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    // 2. Método para saber que celdas (fila) deben mostrarse
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
        
        return cell
        
    }
}
