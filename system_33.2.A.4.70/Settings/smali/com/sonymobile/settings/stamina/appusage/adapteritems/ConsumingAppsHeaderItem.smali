.class public Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;
.super Ljava/lang/Object;
.source "ConsumingAppsHeaderItem.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;


# instance fields
.field private mAppsCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "appsCount"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;->mAppsCount:I

    .line 19
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;->getViewResourceId()I

    move-result v1

    invoke-virtual {p2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 29
    :cond_0
    const v1, 0x7f130043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x7f0b0c10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    const v1, 0x7f1300b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .restart local v0    # "tv":Landroid/widget/TextView;
    const v1, 0x7f0b0c0e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const v1, 0x7f130215

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .restart local v0    # "tv":Landroid/widget/TextView;
    iget v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;->mAppsCount:I

    if-lez v1, :cond_1

    .line 36
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    return-object p1

    .line 38
    :cond_1
    const v1, 0x7f0b0c0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewResourceId()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f04010c

    return v0
.end method

.method public onClick(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 56
    return-void
.end method
