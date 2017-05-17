.class public interface abstract Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
.super Ljava/lang/Object;
.source "TransferTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;
    }
.end annotation


# virtual methods
.method public abstract cancelHint()V
.end method

.method public abstract drop(Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;)V
.end method

.method public abstract hint(II)Z
.end method
