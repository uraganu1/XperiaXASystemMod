.class Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;
.super Landroid/os/AsyncTask;
.source "MessageItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcardLocationAttachmentViewUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/mms/pdu/PduPart;",
        "Lcom/android/vcard/VCardEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasAttachment:Z

.field private mPduParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MessageItemView;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageItemView;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "viewGroup"    # Landroid/view/ViewGroup;
    .param p5, "hasAttachment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p3, "pduParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mContext:Landroid/content/Context;

    .line 650
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mViewGroup:Landroid/view/ViewGroup;

    .line 651
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mPduParts:Ljava/util/ArrayList;

    .line 652
    iput-boolean p5, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mHasAttachment:Z

    .line 648
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 656
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Lcom/android/vcard/VCardEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v0, "attachmentInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/google/android/mms/pdu/PduPart;Lcom/android/vcard/VCardEntry;>;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mPduParts:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pduPart$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/PduPart;

    .line 660
    .local v2, "pduPart":Lcom/google/android/mms/pdu/PduPart;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    .line 659
    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/VCardUtil;->getAllVCardContactDetails(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v1

    .line 661
    .local v1, "entry":Lcom/android/vcard/VCardEntry;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 664
    .end local v1    # "entry":Lcom/android/vcard/VCardEntry;
    .end local v2    # "pduPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attachmentInfos"    # Ljava/lang/Object;

    .prologue
    .line 668
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "attachmentInfos":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Lcom/android/vcard/VCardEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "attachmentInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/google/android/mms/pdu/PduPart;Lcom/android/vcard/VCardEntry;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 670
    .local v5, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/mms/pdu/PduPart;Lcom/android/vcard/VCardEntry;>;"
    const-string/jumbo v1, ""

    .line 671
    .local v1, "address":Ljava/lang/String;
    iget-object v12, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/android/vcard/VCardEntry;

    .line 672
    .local v12, "vCardEntry":Lcom/android/vcard/VCardEntry;
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/mms/pdu/PduPart;

    .line 673
    .local v9, "pduPart":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v12, :cond_0

    .line 674
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v8

    .line 675
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 676
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardEntry$PostalData;

    .line 677
    .local v10, "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    invoke-static {v10}, Lcom/sonyericsson/conversations/util/VCardUtil;->getFormattedAddress(Lcom/android/vcard/VCardEntry$PostalData;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    .end local v10    # "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-static {v13, v14, v1, v9}, Lcom/sonyericsson/conversations/ui/MessageItemView;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageItemView;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/google/android/mms/pdu/PduPart;)V

    goto :goto_0

    .line 684
    .end local v1    # "address":Ljava/lang/String;
    .end local v5    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/mms/pdu/PduPart;Lcom/android/vcard/VCardEntry;>;"
    .end local v9    # "pduPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "vCardEntry":Lcom/android/vcard/VCardEntry;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mHasAttachment:Z

    if-eqz v13, :cond_2

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    iget-object v13, v13, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    iget-object v13, v13, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v13}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v7

    .line 686
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 688
    .local v11, "res":Landroid/content/res/Resources;
    const v13, 0x7f0c0035

    .line 687
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 689
    .local v3, "badgePadding":I
    const v13, 0x7f0c003c

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 691
    .local v4, "borderMargin":I
    const v13, 0x7f0c004f

    .line 690
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    add-int v2, v13, v4

    .line 692
    .local v2, "attachmentPadding":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView$VcardLocationAttachmentViewUpdater;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    move v13, v2

    .line 693
    :goto_2
    if-eqz v7, :cond_5

    .line 692
    .end local v3    # "badgePadding":I
    :goto_3
    const/4 v15, 0x0

    .line 693
    const/16 v16, 0x0

    .line 692
    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v3, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 668
    .end local v2    # "attachmentPadding":I
    .end local v4    # "borderMargin":I
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_2
    return-void

    .line 685
    :cond_3
    const/4 v7, 0x1

    .local v7, "isSent":Z
    goto :goto_1

    .end local v7    # "isSent":Z
    .restart local v2    # "attachmentPadding":I
    .restart local v3    # "badgePadding":I
    .restart local v4    # "borderMargin":I
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_4
    move v13, v3

    .line 692
    goto :goto_2

    :cond_5
    move v3, v2

    .line 693
    goto :goto_3
.end method
