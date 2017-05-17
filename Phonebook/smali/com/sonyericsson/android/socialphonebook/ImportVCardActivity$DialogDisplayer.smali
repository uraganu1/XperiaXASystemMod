.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
    .param p2, "resId"    # I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const v0, 0x7f0e0015

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 134
    invoke-static {p1, p2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->checkFinishingAndShowDialog(I)V

    .line 136
    return-void
.end method
