.class Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$1;
.super Ljava/lang/Object;
.source "AttachmentPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->handleIntent(Landroid/content/Intent;)V
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
    .line 101
    iput-object p1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    iget-object v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    invoke-static {v1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->-get0(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;)Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/conversations/ui/AttachmentItemListAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->-wrap0(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;I)V

    .line 104
    return-void
.end method
