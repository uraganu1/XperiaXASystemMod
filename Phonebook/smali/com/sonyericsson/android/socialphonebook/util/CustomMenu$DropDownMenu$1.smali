.class Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu$1;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 45
    return-void
.end method
