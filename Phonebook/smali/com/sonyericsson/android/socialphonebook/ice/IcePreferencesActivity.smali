.class public Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "IcePreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 36
    .local v0, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 37
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->newInstance()Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 38
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 49
    const/4 v1, 0x1

    return v1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
