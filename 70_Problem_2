// code_report Solution
// https://www.youtube.com/watch?v=ADun2n_ueZQ

vector<TreeNode*> splitBST (TreeNode* root, int V) {
	
	vector<TreeNode*> ans (2, nullptr);
	
	if (root == nullptr) return ans;

	int x      = root->val > V ? 1 : 0;
	int y      = root->val > V ? 0 : 1;
	auto& node = root->val > V ? root->left : root->right;

	ans[x]     = root;
	auto t     = splitBST (node, V);
	node       = t[x];
	ans[y]     = t[y];

	return ans;
}
