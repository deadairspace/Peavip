echo "<ServerManagerConfiguration>
   <ProxyGroup name=\"sources\">
      <SourceProxy name=\"$1\"
                   class=\"vtk$1\"
                  label=\"\">
         <Documentation>
                      long_help=\"\" 
                      short_help=\"\"> 
         </Documentation> 

      </SourceProxy>
   </ProxyGroup> 
</ServerManagerConfiguration>" > $1.xml 

