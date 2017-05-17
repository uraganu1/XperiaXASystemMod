.class public interface abstract Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;
.super Ljava/lang/Object;
.source "SimExportThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimExportThreadListener"
.end annotation


# static fields
.field public static final INSERT_ALLNG:I = 0x0

.field public static final INSERT_ALLOK:I = 0x1

.field public static final INSERT_FULL:I = 0x3

.field public static final INSERT_PARTOK:I = 0x2


# virtual methods
.method public abstract exportFinished(I)V
.end method

.method public abstract incrementProgressBy(I)V
.end method

.method public abstract sweepFinished()V
.end method
