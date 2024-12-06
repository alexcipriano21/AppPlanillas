package ui;
import java.awt.Color;
import java.awt.Font;
import java.awt.Insets;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.border.LineBorder;
import javax.swing.table.DefaultTableModel;

public class Cargos extends JPanel {
    private static final long serialVersionUID = 1L;
    JTextField txtBuscar, txtID, txtDetalle;
    JTable tblRegistros;
    DefaultTableModel modelo;

    public Cargos() {
        setBorder(new LineBorder(Color.GRAY));
        setBounds(0, 0, 772, 661);
        setLayout(null);

        JLabel lblPanel = new JLabel("GESTION DE CARGOS");
        lblPanel.setBounds(10, 10, 200, 30);
        lblPanel.setFont(new Font("Tahoma", 20, 20));
        lblPanel.setForeground(Color.RED);
        add(lblPanel);

        JPanel pnlRegistros = new JPanel();
        pnlRegistros.setBorder(new LineBorder(new Color(189, 189, 189)));
        pnlRegistros.setBounds(1, 60, 250, 600);
        pnlRegistros.setLayout(null);
        add(pnlRegistros);

        JPanel pnlRegistro = new JPanel();
        pnlRegistro.setBorder(new LineBorder(new Color(189, 189, 189)));
        pnlRegistro.setBounds(251, 60, 520, 600);
        pnlRegistro.setLayout(null);
        add(pnlRegistro);

        JLabel lblBuscar = new JLabel("Descripcion: ");
        lblBuscar.setBorder(new LineBorder(new Color(224,224,244)));
        lblBuscar.setBounds(1, 60, 248,30);
        pnlRegistros.add(lblBuscar); 

        txtBuscar = new JTextField();
        txtBuscar.setBorder(new LineBorder(new Color(224,224,244)));
        txtBuscar.setBackground(new Color(255, 246,223));
        txtBuscar.setBounds(1, 81, 248,30);
        txtBuscar.setColumns(30);
        txtBuscar.setMargin(new Insets(5, 10, 5, 10));
        pnlRegistros.add(txtBuscar);

        tblRegistros = new JTable();
        tblRegistros.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        tblRegistros.setBounds(2,112,246,515);
        tblRegistros.setRowHeight(30);
        pnlRegistros.add(tblRegistros);
        
        JScrollPane scpRegistros = new JScrollPane();
        scpRegistros.setBounds(1,112,248,488);
        pnlRegistros.add(scpRegistros);
    }
}
