.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 148
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$CancelListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    .line 144
    return-void
.end method
