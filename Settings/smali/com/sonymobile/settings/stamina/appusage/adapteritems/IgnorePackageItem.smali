.class public Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;
.super Ljava/lang/Object;
.source "IgnorePackageItem.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;


# instance fields
.field private mIgnored:Z

.field private mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;)V
    .locals 1
    .param p1, "packageInfo"    # Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    instance-of v2, p1, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;

    if-nez v2, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    if-ne p1, p0, :cond_1

    .line 77
    return v0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->getUid()I

    move-result v2

    check-cast p1, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->getUid()I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v4, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->getViewResourceId()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 35
    :cond_0
    const v3, 0x7f130012

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v3, 0x7f130042

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const v3, 0x7f1300b5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 40
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    return-object p1
.end method

.method public getViewResourceId()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f040109

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public isIgnored()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    return v0
.end method

.method public onClick(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 52
    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    .line 53
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1300b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 54
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    return-void

    .line 52
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
