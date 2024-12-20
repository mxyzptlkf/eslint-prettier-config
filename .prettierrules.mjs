import eslintPluginPrettier from 'eslint-plugin-prettier';
//import eslintConfigPrettier from 'eslint-config-prettier';

const prettierRules = {
	plugins: {
		prettier: eslintPluginPrettier,
	},
	rules: {
		'prettier/prettier': [
			'warn', // Set Prettier formatting issues
			{
				// Overriding .prettierrc if needed
			},
		],
	},
	//eslintConfigPrettier,
};

export default prettierRules;
