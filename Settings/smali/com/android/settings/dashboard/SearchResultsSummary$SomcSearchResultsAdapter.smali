.class Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SomcSearchResultsAdapter"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 896
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    .line 896
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 926
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "header":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 929
    const/4 v6, 0x1

    .line 928
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "noMatch":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 931
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, "summary":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 934
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "noMatch":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 939
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 944
    iget-boolean v6, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    if-nez v6, :cond_0

    if-nez p2, :cond_0

    .line 945
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 946
    const-string/jumbo v7, "this should only be called when the cursor is valid"

    .line 945
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 948
    :cond_0
    iget-object v6, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 949
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "couldn\'t move cursor to position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 952
    :cond_1
    move-object v5, p2

    .line 955
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1301f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 956
    .local v0, "header":Landroid/widget/TextView;
    const v6, 0x7f1301f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 957
    .local v1, "noMatch":Landroid/widget/TextView;
    const v6, 0x7f1301ef

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 958
    .local v4, "textTitle":Landroid/widget/TextView;
    const v6, 0x7f1301f0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 959
    .local v3, "textSummary":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;

    .line 961
    .local v2, "result":Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;
    if-eqz v2, :cond_2

    .line 962
    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->header:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 963
    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->header:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :cond_2
    :goto_0
    return-object v5

    .line 967
    :cond_3
    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->noMatch:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 968
    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->noMatch:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 973
    :cond_4
    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->summary:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSearchResultAdapter(Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;)V
    .locals 0
    .param p1, "searchAdapter"    # Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 982
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 901
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 902
    return-object v2

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 905
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 906
    if-eqz p1, :cond_1

    .line 907
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    .line 910
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    .line 915
    :goto_0
    return-object v0

    .line 912
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    .line 913
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
