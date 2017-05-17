.class public Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "InputSecretCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method

.method public static addFooterViewForTablet(Landroid/preference/PreferenceActivity;)V
    .locals 4
    .param p0, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    const/4 v3, 0x0

    .line 48
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    return-void

    .line 54
    :cond_1
    const-string/jumbo v2, "layout_inflater"

    .line 53
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 55
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400a5

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "footer":Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setListFooter(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    const v0, 0x7f0400a4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity;->setContentView(I)V

    .line 26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 39
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity;->finish()V

    .line 41
    const/4 v1, 0x1

    return v1

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
