.class public Lcom/mediatek/incallui/CallDetailChangeHandler;
.super Ljava/lang/Object;
.source "CallDetailChangeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mediatek/incallui/CallDetailChangeHandler;


# instance fields
.field private mCallDetailChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/mediatek/incallui/CallDetailChangeHandler;

    invoke-direct {v0}, Lcom/mediatek/incallui/CallDetailChangeHandler;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/CallDetailChangeHandler;->sInstance:Lcom/mediatek/incallui/CallDetailChangeHandler;

    .line 11
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/CallDetailChangeHandler;->mCallDetailChangeListeners:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/CallDetailChangeHandler;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mediatek/incallui/CallDetailChangeHandler;->sInstance:Lcom/mediatek/incallui/CallDetailChangeHandler;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, "CallDetailChangeHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public addCallDetailChangeListener(Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/incallui/CallDetailChangeHandler;->mCallDetailChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mediatek/incallui/CallDetailChangeHandler;->mCallDetailChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-void
.end method

.method public onCallDetailChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "oldDetails"    # Landroid/telecom/Call$Details;
    .param p3, "newDetails"    # Landroid/telecom/Call$Details;

    .prologue
    .line 44
    const-string/jumbo v2, "handleDetailsChanged()..."

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/CallDetailChangeHandler;->log(Ljava/lang/String;)V

    .line 45
    invoke-static {p2, p3}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->isVolteMarkedEccChanged(Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/mediatek/incallui/CallDetailChangeHandler;->mCallDetailChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;

    .line 47
    .local v0, "listener":Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;
    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;->onVolteMarkedEccChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 50
    .end local v0    # "listener":Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-static {p2, p3}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->isPhoneNumberChanged(Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/mediatek/incallui/CallDetailChangeHandler;->mCallDetailChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;

    .line 52
    .restart local v0    # "listener":Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;
    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;->onPhoneNumberChanged(Lcom/android/incallui/Call;)V

    goto :goto_1

    .line 43
    .end local v0    # "listener":Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
