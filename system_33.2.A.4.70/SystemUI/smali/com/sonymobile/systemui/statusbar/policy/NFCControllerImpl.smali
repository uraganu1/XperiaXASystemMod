.class public Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NFCControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/NFCController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->nfcSettingsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    return-void
.end method

.method private nfcSettingsChanged()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->isNFCEnabled()Z

    move-result v2

    .line 113
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;

    .line 114
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;->onNFCSettingsChanged(Z)V

    goto :goto_0

    .line 111
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private nfcSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->isNFCEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;->onNFCSettingsChanged(Z)V

    .line 118
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->registerNFCBroadcast()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->nfcSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V

    .line 103
    return-void
.end method

.method public getNfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNFCEnabled()Z
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 66
    const/4 v2, 0x0

    return v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 69
    .local v1, "value":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 70
    :cond_1
    const/4 v0, 0x1

    .line 71
    .local v0, "enabled":Z
    :goto_0
    return v0

    .line 70
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    return-void
.end method

.method public registerNFCBroadcast()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 130
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "nfc":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/NFCController$NFCSettingsChangeCallback;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->unregisterNFCBroadcast()V

    .line 122
    :cond_0
    return-void
.end method

.method public setNFCEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 86
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public unregisterNFCBroadcast()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/NFCControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method
