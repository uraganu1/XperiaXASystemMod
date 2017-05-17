.class Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$2;
.super Ljava/lang/Object;
.source "AttachmentPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->showAttachmentDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$2;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$2;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->finish()V

    .line 119
    return-void
.end method
