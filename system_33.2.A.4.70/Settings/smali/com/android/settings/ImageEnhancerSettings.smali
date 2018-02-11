.class public Lcom/android/settings/ImageEnhancerSettings;
.super Landroid/app/Activity;
.source "ImageEnhancerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private prepareActionBar()V
    .locals 7

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/ImageEnhancerSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/settings/ImageEnhancerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 72
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 74
    :try_start_0
    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 79
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    return-void

    .line 75
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ImageEnhancerSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/ImageEnhancerSettings;->requestWindowFeature(I)Z

    .line 62
    invoke-direct {p0}, Lcom/android/settings/ImageEnhancerSettings;->prepareActionBar()V

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/ImageEnhancerSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;

    invoke-direct {v1}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;-><init>()V

    .line 64
    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "result":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 99
    .end local v0    # "result":Z
    :goto_0
    return v0

    .line 94
    .restart local v0    # "result":Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ImageEnhancerSettings;->finish()V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
