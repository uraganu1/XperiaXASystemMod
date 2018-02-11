.class public Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageListAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    .line 30
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    .line 31
    .local v0, "item":Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getViewResourceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getViewResourceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    .end local v0    # "item":Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    invoke-interface {v1}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getViewResourceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0, p2, v1}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v1

    return v1
.end method
