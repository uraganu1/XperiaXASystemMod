.class public Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;
.super Ljava/lang/Object;
.source "DefaultRcseOnlyApnExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IRcseOnlyApnExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRcseOnlyApnEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/mediatek/settings/ext/IRcseOnlyApnExt$OnRcseOnlyApnStateChangedListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/ext/IRcseOnlyApnExt$OnRcseOnlyApnStateChangedListener;
    .param p2, "subId"    # I

    .prologue
    .line 16
    return-void
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
