.class Lcom/android/settings/sim/SimSettings$PhoneStateListeners;
.super Ljava/lang/Object;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneStateListeners"
.end annotation


# instance fields
.field private mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

.field private mServiceStates:[Landroid/telephony/ServiceState;

.field private mSlotCount:I

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/sim/SimSettings$PhoneStateListeners;)[Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mServiceStates:[Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mSlotCount:I

    .line 696
    iget v0, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mSlotCount:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    .line 697
    iget v0, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mSlotCount:I

    new-array v0, v0, [Landroid/telephony/ServiceState;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mServiceStates:[Landroid/telephony/ServiceState;

    .line 695
    return-void
.end method

.method private createPhoneStateListenerIfNeed(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1, p1}, Lcom/android/settings/sim/SimSettings;->-wrap4(Lcom/android/settings/sim/SimSettings;I)I

    move-result v0

    .line 721
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 722
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    aput-object v2, v1, p1

    .line 719
    :cond_0
    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 728
    new-instance v0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;-><init>(Lcom/android/settings/sim/SimSettings$PhoneStateListeners;II)V

    .line 738
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getServiceState(I)Landroid/telephony/ServiceState;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 743
    .local v0, "result":Landroid/telephony/ServiceState;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mServiceStates:[Landroid/telephony/ServiceState;

    aget-object v0, v1, p1

    .line 746
    .end local v0    # "result":Landroid/telephony/ServiceState;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isStateInService(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 752
    .local v1, "ss":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 753
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listen()V
    .locals 4

    .prologue
    .line 701
    const/4 v0, 0x0

    .local v0, "slotIndex":I
    :goto_0
    iget v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mSlotCount:I

    if-ge v0, v1, :cond_1

    .line 702
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->createPhoneStateListenerIfNeed(I)V

    .line 703
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    .line 705
    const/4 v3, 0x1

    .line 704
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_1
    return-void
.end method

.method public unlisten()V
    .locals 4

    .prologue
    .line 711
    const/4 v0, 0x0

    .local v0, "subIndex":I
    :goto_0
    iget v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mSlotCount:I

    if-ge v0, v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->-get4(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    .line 714
    const/4 v3, 0x0

    .line 713
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 711
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_1
    return-void
.end method
