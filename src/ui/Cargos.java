package ui;

import java.awt.Color;
import java.awt.Font;
import java.awt.Insets;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.border.LineBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;
import controller.CargoDAO;
import model.Cargo;

public class Cargos extends JPanel {
    private static final long serialVersionUID = 1L;
    
    JButton btnAgregar, btnEditar, btnEliminar, btnGuardar, btnCancelar;
    JTextField txtBuscar, txtCodigo, txtDetalle;
    JTable tblRegistros;
    TableRowSorter<DefaultTableModel> tableRowSorter;
    
    Cargo cargo = new Cargo();
    CargoDAO cargoDAO = new CargoDAO();

    public Cargos() {
    	
        setBorder( new LineBorder( new Color(224, 224, 224) ) );
        setBounds(0, 0, 1028,  661);
        setLayout(null);
        
        JLabel lblPanel = new JLabel("GESTIÓN CARGOS");
        lblPanel.setBounds(10,10,200,30);
        lblPanel.setFont(new Font("Tahoma",Font.BOLD,20));
        lblPanel.setForeground(Color.RED);
        add(lblPanel);

        JPanel pnlRegistros = new JPanel();
        pnlRegistros.setBorder( new LineBorder( new Color(189, 189, 189) ) );
        pnlRegistros.setBounds(1,60,250,600);
        pnlRegistros.setLayout(null);
        add(pnlRegistros);
        
        JPanel pnlRegistro = new JPanel();
        pnlRegistro.setBorder( new LineBorder( new Color(189, 189, 189) ) );
        pnlRegistro.setBounds(251,60,1028,600);
        pnlRegistro.setLayout(null);
        add(pnlRegistro);
        
        JLabel lblBuscar = new JLabel("Detalle :");
        lblBuscar.setBorder(new LineBorder(new Color(224,224,224)));
        lblBuscar.setBounds(1,50, 248,30);
        pnlRegistros.add(lblBuscar);
        
        txtBuscar = new JTextField();
        txtBuscar.setBorder(new LineBorder(new Color(224,224,224)));
        txtBuscar.setBackground(new Color(255,246,223));
        txtBuscar.setBounds(1,81, 248,30);
        txtBuscar.setColumns(30);
        txtBuscar.setMargin(new Insets(5,10,5,10));
        pnlRegistros.add(txtBuscar);
        
        tblRegistros = new JTable();
        tblRegistros.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        tblRegistros.setBounds(2, 112, 246, 515);
        tblRegistros.setRowHeight(30);
        pnlRegistros.add(tblRegistros);
        
        btnAgregar = new JButton("Agregar");
        btnAgregar.setBackground(new Color(250,250,250));
        btnAgregar.setBorderPainted(false);
        btnAgregar.setBounds(10,10,100,30);
        btnAgregar.setFocusPainted(false);
        btnAgregar.setIcon(new ImageIcon(Login.class.getResource("/ui/img/agregar.png")));
        btnAgregar.setIconTextGap(10);
        btnAgregar.setMargin(new Insets(2,5,2,5));
        pnlRegistro.add(btnAgregar);
        
        btnEditar = new JButton("Editar");
        btnEditar.setBackground(new Color(250,250,250));
        btnEditar.setBorderPainted(false);
        btnEditar.setBounds(120,10,100,30);
        btnEditar.setFocusPainted(false);
        btnEditar.setIcon(new ImageIcon(Login.class.getResource("/ui/img/editar.png")));
        btnEditar.setIconTextGap(10);
        btnEditar.setMargin(new Insets(2,5,2,5));
        pnlRegistro.add(btnEditar);
        
        btnEliminar = new JButton("Eliminar");
        btnEliminar.setBackground(new Color(250,250,250));
        btnEliminar.setBorderPainted(false);
        btnEliminar.setBounds(230,10,100,30);
        btnEliminar.setFocusPainted(false);
        btnEliminar.setIcon(new ImageIcon(Login.class.getResource("/ui/img/eliminar.png")));
        btnEliminar.setIconTextGap(10);
        btnEliminar.setMargin(new Insets(2,5,2,5));
        pnlRegistro.add(btnEliminar);
        
        btnGuardar = new JButton("Guardar");
        btnGuardar.setBackground(new Color(250,250,250));
        btnGuardar.setBorderPainted(false);
        btnGuardar.setBounds(550,10,100,30);
        btnGuardar.setFocusPainted(false);
        btnGuardar.setIcon(new ImageIcon(Login.class.getResource("/ui/img/guardar.png")));
        btnGuardar.setIconTextGap(10);
        btnGuardar.setMargin(new Insets(2,5,2,5));
        pnlRegistro.add(btnGuardar);
        
        btnCancelar = new JButton("Cancelar");
        btnCancelar.setBackground(new Color(250,250,250));
        btnCancelar.setBorderPainted(false);
        btnCancelar.setBounds(660,10,100,30);
        btnCancelar.setFocusPainted(false);
        btnCancelar.setIcon(new ImageIcon(Login.class.getResource("/ui/img/cancelar.png")));
        btnCancelar.setIconTextGap(10);
        btnCancelar.setMargin(new Insets(2,5,2,5));
        pnlRegistro.add(btnCancelar);
        
        JLabel lblCodigo = new JLabel("Codigo :");
        lblCodigo.setBounds(50,200,100,30);
        pnlRegistro.add(lblCodigo);
        
        JLabel lblDetalle = new JLabel("Codigo :");
        lblDetalle.setBounds(50,250,100,30);
        pnlRegistro.add(lblDetalle);
        
        txtCodigo = new JTextField();
        txtCodigo.setBounds(150,200,50,30);
        txtCodigo.setFocusable(false);
        txtCodigo.setMargin(new Insets(5,5,5,5));
        pnlRegistro.add(txtCodigo);
        
        txtDetalle = new JTextField();
        txtDetalle.setBounds(150,250,200,30);
        txtDetalle.setColumns(30);
        txtDetalle.setMargin(new Insets(5,5,5,5));
        pnlRegistro.add(txtDetalle);
        
    	btnAgregar.addActionListener( e -> btnAgregar_actionPerformed() );
   		btnEditar.addActionListener(e ->btnCancelar_actionPerformed());
   		btnEliminar.addActionListener(e ->btnCancelar_actionPerformed());
   		btnGuardar.addActionListener(e ->btnCancelar_actionPerformed());
   		btnCancelar.addActionListener(e ->btnCancelar_actionPerformed());
   		
   		Configurar(true);
    }       
        protected void btnAgregar_actionPerformed() {
        	Configurar(false);
        }
        
        protected void btnEditar_actionPerformed() {
        	Configurar(true);
        }
        
        protected void btnEliminar_actionPerformed() {
        	Configurar(true);
        }
        
        protected void btnGuardar_actionPerformed() {
        	Configurar(true);
        }
        
        protected void btnCancelar_actionPerformed() {
        	Configurar(true);
        }
        
        protected void Configurar(boolean bOnOff ) {
        	btnAgregar.setVisible(bOnOff);
        	btnEditar.setVisible(bOnOff);
        	btnEliminar.setVisible(bOnOff);
        	btnGuardar.setVisible(!bOnOff);
        	btnCancelar.setVisible(!bOnOff);
        	
        	txtBuscar.setFocusable(bOnOff);
        	txtDetalle.setFocusable(!bOnOff);
        }
        
}