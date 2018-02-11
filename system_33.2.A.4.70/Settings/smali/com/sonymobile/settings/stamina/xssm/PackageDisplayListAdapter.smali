.class public Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageDisplayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapterWhitelisted:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

.field private mContext:Landroid/content/Context;

.field private mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;)Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mAdapterWhitelisted:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "whitelist"    # Lcom/sonymobile/settings/stamina/xssm/WhiteList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;",
            "Lcom/sonymobile/settings/stamina/xssm/WhiteList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mAdapterWhitelisted:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .line 52
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    .line 54
    iput-object p3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 130
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getUserWhitelist()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    return v1

    .line 135
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getPackageDisplayListItem(Ljava/lang/String;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .locals 5
    .param p1, "searchPkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 166
    if-eqz p1, :cond_1

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .line 169
    .local v1, "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    return-object v1

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewTag"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 79
    if-nez p2, :cond_1

    .line 80
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040112

    invoke-virtual {v1, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;

    invoke-direct {v0, v6}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;)V

    .line 84
    .local v0, "holder":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;
    const v5, 0x7f13022b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->linear:Landroid/widget/LinearLayout;

    .line 85
    const v5, 0x7f1300f1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 86
    const v5, 0x7f130042

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 87
    const v5, 0x7f1300b5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .line 94
    .local v2, "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "labelString":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    if-nez v3, :cond_0

    move-object v3, v4

    .end local v3    # "labelString":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getApplicationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->isWhitelisted(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    invoke-direct {p0, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 103
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 110
    :goto_1
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->linear:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;

    invoke-direct {v6, p0, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-object p2

    .line 90
    .end local v0    # "holder":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;
    .end local v2    # "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;
    goto :goto_0

    .line 105
    .restart local v2    # "item":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 107
    iget-object v5, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected reloadWhitelist()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->reloadWhitelist()V

    .line 184
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method

.method protected setWhitelistAdapter(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 0
    .param p1, "adapterWhitelisted"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mAdapterWhitelisted:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .line 178
    return-void
.end method

.method protected updatePackageDisplayList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    return v3

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getUserWhitelist()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "packageDisplayListPkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getUserWhitelist()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->notifyDataSetChanged()V

    .line 149
    return v4

    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    .end local v1    # "packageDisplayListPkg":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 154
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "packageDisplayListPkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getUserWhitelist()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->notifyDataSetChanged()V

    .line 158
    return v4

    .line 153
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v1    # "packageDisplayListPkg":Ljava/lang/String;
    :cond_4
    return v3
.end method
