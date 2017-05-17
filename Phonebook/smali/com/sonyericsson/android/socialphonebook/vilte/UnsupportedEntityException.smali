.class public Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;
.super Ljava/lang/IllegalStateException;
.source "UnsupportedEntityException.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;)V
    .locals 1
    .param p1, "entityVisibility"    # Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
