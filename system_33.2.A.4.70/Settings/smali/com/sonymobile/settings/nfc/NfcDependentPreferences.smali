.class public Lcom/sonymobile/settings/nfc/NfcDependentPreferences;
.super Ljava/lang/Object;
.source "NfcDependentPreferences.java"


# instance fields
.field private mPayment:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNfcStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 47
    const-string/jumbo v0, "NfcDependentPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPayment(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "payment"    # Landroid/preference/Preference;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->mPayment:Landroid/preference/Preference;

    .line 20
    return-void
.end method
