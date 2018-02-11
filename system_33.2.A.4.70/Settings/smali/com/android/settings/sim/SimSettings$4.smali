.class Lcom/android/settings/sim/SimSettings$4;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->initPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PhoneStateListener.onCallStateChanged: state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/sim/SimSettings;->-wrap7(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    const-string/jumbo v5, "sim_cellular_data"

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 402
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 404
    const-string/jumbo v4, "ril.cdma.inecmmode"

    .line 403
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 407
    .local v1, "ecbMode":Z
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-wrap1(Lcom/android/settings/sim/SimSettings;)Z

    move-result v0

    .line 408
    .local v0, "callStateIdle":Z
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-wrap0(Lcom/android/settings/sim/SimSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->-get3(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    .end local v0    # "callStateIdle":Z
    :cond_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 399
    .end local v1    # "ecbMode":Z
    :cond_2
    return-void
.end method
