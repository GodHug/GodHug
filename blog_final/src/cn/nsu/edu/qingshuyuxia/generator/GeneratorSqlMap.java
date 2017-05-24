package cn.nsu.edu.qingshuyuxia.generator;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

public class GeneratorSqlMap {
	public static void main(String[] args) {
		GeneratorSqlMap generatorSqlMap=new GeneratorSqlMap();
		try {
			generatorSqlMap.generator();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void generator() throws Exception {
		List<String> warnings = new ArrayList<String>();
		   boolean overwrite = true;
		   File configFile = new File("config/generatorCongig.xml");
		   ConfigurationParser cp = new ConfigurationParser(warnings);
		   Configuration config = cp.parseConfiguration(configFile);
		   DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		   MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
		   myBatisGenerator.generate(null);
	}
}
