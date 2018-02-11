.class public Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;
.super Ljava/lang/Object;
.source "ShowAllConsumingAppsItem.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v2, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;->getViewResourceId()I

    move-result v1

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 26
    :cond_0
    const v1, 0x7f130043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x7f0b0c11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    return-object p1
.end method

.method public getViewResourceId()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f040107

    return v0
.end method

.method public onClick(Landroid/app/Fragment;)V
    .locals 7
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 39
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "what_to_show"

    const-string/jumbo v3, "consuming"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 42
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 43
    const v3, 0x7f0b0c10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 38
    return-void
.end method
