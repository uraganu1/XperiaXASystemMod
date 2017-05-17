.class public Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPageAdapter.java"


# instance fields
.field private mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private mCurrentTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mTabsDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "containerId"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    .line 85
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mContext:Landroid/content/Context;

    .line 87
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mContainerId:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mTabsDescriptions:Ljava/util/List;

    .line 90
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "containerId has to be an ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method private createItem(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static getPageTag(Ljava/lang/Class;II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->makeFragmentTag(Ljava/lang/Class;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeFragmentName(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->getItemId(I)J

    move-result-wide v2

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mContainerId:I

    invoke-static {v0, v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->makeFragmentTag(Ljava/lang/Class;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeFragmentTag(Ljava/lang/Class;JI)Ljava/lang/String;
    .locals 3
    .param p1, "itemId"    # J
    .param p3, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;JI)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPage(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 167
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 194
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 191
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 243
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 245
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->makeFragmentName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    if-nez v0, :cond_1

    .line 255
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->createItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 205
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x1

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, -0x2

    :cond_0
    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mTabsDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public initialize(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 269
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 274
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const/4 v1, 0x0

    .local v1, "page":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 275
    if-eq p1, v1, :cond_0

    add-int/lit8 v3, p1, -0x1

    if-eq v3, v1, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v1, :cond_0

    .line 276
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->makeFragmentName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 277
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 274
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 268
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 119
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->makeFragmentName(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "tag":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    if-eqz v0, :cond_2

    .line 135
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 154
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 155
    const-string/jumbo v3, "Unexpected fragment class type, did you specify a unique continerId?"

    .line 154
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fragment":Landroid/app/Fragment;
    check-cast v0, Landroid/app/Fragment;

    .line 145
    .restart local v0    # "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_3

    .line 146
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->createItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v2, :cond_5

    .line 159
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 160
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 163
    :cond_5
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(ILjava/lang/Class;)V
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 292
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 294
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 296
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 297
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 305
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 308
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p3

    .line 176
    check-cast v0, Landroid/app/Fragment;

    .line 177
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 182
    :cond_0
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 184
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 186
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 175
    :cond_2
    return-void
.end method

.method public setTabsDescriptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "tabsDescription":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->mTabsDescriptions:Ljava/util/List;

    .line 104
    return-void
.end method
