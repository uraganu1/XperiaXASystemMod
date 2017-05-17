.class public Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DualSdnContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 171
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 196
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 193
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->values()[Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getFragment(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 216
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    move-result-object v0

    return-object v0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 163
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 165
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    return v0

    .line 167
    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 206
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 207
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 212
    :cond_1
    return-object v0

    .line 210
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "result":Z
    if-eqz p2, :cond_0

    .line 155
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    move-object v0, p3

    .line 180
    check-cast v0, Landroid/app/Fragment;

    .line 181
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v1, v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 185
    :cond_0
    if-eqz v0, :cond_1

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 188
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 179
    :cond_2
    return-void
.end method
