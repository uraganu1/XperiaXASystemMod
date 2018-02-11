.class public Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;
.super Landroid/app/Activity;
.source "VowKeyguardConfirm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 8
    .param p1, "request"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    const-string/jumbo v2, "title"

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 57
    const-wide/16 v6, 0x0

    move v2, p1

    move-object v5, v4

    .line 56
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 30
    const-string/jumbo v0, "VowKeyguardConfirm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 33
    return-void

    .line 38
    :cond_0
    if-ne p2, v3, :cond_1

    .line 39
    invoke-virtual {p0, v3}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->finish()V

    .line 28
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string/jumbo v0, "VowKeyguardConfirm"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->setResult(I)V

    .line 23
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->finish()V

    .line 17
    :cond_0
    return-void
.end method
