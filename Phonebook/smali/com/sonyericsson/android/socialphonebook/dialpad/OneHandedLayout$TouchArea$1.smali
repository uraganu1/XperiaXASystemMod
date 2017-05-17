.class Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea$1;
.super Ljava/lang/Object;
.source "OneHandedLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea$1;->this$1:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea$1;->this$1:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea$1;->this$1:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->-wrap1(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    .line 143
    return-void
.end method
