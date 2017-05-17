.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;
.super Ljava/lang/Exception;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanceledException"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;->this$1:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;)V

    return-void
.end method
