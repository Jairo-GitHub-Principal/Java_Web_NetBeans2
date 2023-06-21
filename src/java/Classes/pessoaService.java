/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.Conexao;
import Classes.Pessoa;


/**
 *
 * @author admin
 */
public class pessoaService extends Conexao{


    
    public boolean IcluirPessoa() throws ClassNotFoundException {
		String sql = "insert into pessoa";
		       sql+= "(nome,email)";
		       sql+="values(?,?)";
		      
		       Connection con = conexao();
                      
		       try {
                           Pessoa p = new Pessoa();
		    	   PreparedStatement stm = con.prepareStatement(sql);
		    	   stm.setString(1,p.getNome());
		    	   stm.setString(2, p.getEmail());
		    	   stm.execute();
                           stm.close();
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("Error" + e.getMessage() + sql);
				return false;
			}
		       return true;
		
	}
    
    public List<Pessoa> ListarPessoas() throws ClassNotFoundException {
				List <Pessoa> listar = new ArrayList<>();
				Connection con = conexao();
				String sql = "select * from pessoa";
							
				try {
					Resultset rs = null;         // com.mysql.cj.protocol vela que esse tem o final minusculo "set"
					ResultSet RS = null;         // java.sql vela que esso tem o final maiusculo "Set"
					PreparedStatement stm = con.prepareStatement(sql);
					 RS= stm.executeQuery(sql); 
					 
					 		while(RS.next()) {
								Pessoa p = new Pessoa();
								p.setId(RS.getInt("id"));
								p.setNome(RS.getString("nome"));
								p.setEmail(RS.getString("email"));
								listar.add(p);
							}
                                                        stm.close();
					}
					catch (Exception e) {
						System.out.println("Error"+e.getMessage());
						
						
					}	return listar;				
										
				
			}
    
}
