.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;
.super Ljava/lang/Object;
.source "SmartSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilitiesRunnable"
.end annotation


# instance fields
.field private final mNumber:Ljava/lang/String;

.field private final mServiceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;Ljava/lang/String;)V
    .locals 1
    .param p1, "callPlusConnector"    # Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;->mServiceReference:Ljava/lang/ref/WeakReference;

    .line 806
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;->mNumber:Ljava/lang/String;

    .line 804
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 811
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;->mServiceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 812
    .local v0, "connector":Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    if-eqz v0, :cond_0

    .line 813
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$CapabilitiesRunnable;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->requestCapability(Ljava/lang/String;)V

    .line 810
    :cond_0
    return-void
.end method
