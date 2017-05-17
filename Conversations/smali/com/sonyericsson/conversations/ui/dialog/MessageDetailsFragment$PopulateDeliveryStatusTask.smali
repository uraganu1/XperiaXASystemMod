.class Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;
.super Landroid/os/AsyncTask;
.source "MessageDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopulateDeliveryStatusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeliveryInformation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLayout:Landroid/view/View;

.field private final mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageBox:I

.field private mMessageDetailsText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;Landroid/view/View;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;
    .param p2, "layout"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessageBox:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mDeliveryInformation:Ljava/util/ArrayList;

    .line 119
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mLayout:Landroid/view/View;

    .line 120
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 116
    return-void
.end method

.method private addIndividualDeliveryInfo(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "container"    # Landroid/widget/LinearLayout;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deliveryStatus"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 244
    const v4, 0x7f030020

    const/4 v5, 0x0

    .line 243
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, "deliveryDetailsItemView":Landroid/view/View;
    const v3, 0x7f0d0052

    .line 245
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->getDeliveryStatusText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const v3, 0x7f0d0053

    .line 248
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 250
    .local v2, "statusIconView":Landroid/widget/ImageView;
    invoke-direct {p0, p4}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->getDeliveryStatusIcon(I)I

    move-result v1

    .line 251
    .local v1, "icon":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 252
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    return-void

    .line 254
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private getDeliveryStatusIcon(I)I
    .locals 3
    .param p1, "deliveryStatus"    # I

    .prologue
    .line 286
    const/4 v0, -0x1

    .line 287
    .local v0, "icon":I
    packed-switch p1, :pswitch_data_0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delivery status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string/jumbo v2, " not supported."

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 304
    :goto_0
    :pswitch_0
    return v0

    .line 289
    :pswitch_1
    const v0, 0x7f0200d4

    .line 290
    goto :goto_0

    .line 292
    :pswitch_2
    const v0, 0x7f0200d3

    .line 293
    goto :goto_0

    .line 295
    :pswitch_3
    const v0, 0x7f0200d5

    .line 296
    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDeliveryStatusText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "deliveryStatus"    # I

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "status":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delivery status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string/jumbo v2, " not supported."

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 282
    :goto_0
    return-object v0

    .line 263
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 264
    const v3, 0x7f0b007d

    .line 263
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 268
    const v3, 0x7f0b007e

    .line 267
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 276
    const v3, 0x7f0b0079

    .line 275
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSentGroupMms(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 308
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v0

    .line 308
    :goto_0
    return v0

    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "objects"    # [Ljava/lang/Void;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/model/Message;->refreshDeliveryStatusField(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessageDetailsText:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->isSentGroupMms(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "address"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "delivery_status"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 134
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    .line 135
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, "deliveryReportUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 138
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 140
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 141
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mDeliveryInformation:Ljava/util/ArrayList;

    .line 146
    new-instance v3, Landroid/util/Pair;

    const-string/jumbo v4, "address"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    const-string/jumbo v5, "delivery_status"

    .line 147
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 146
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 150
    throw v0

    .line 151
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 154
    .local v9, "activity":Landroid/app/Activity;
    if-nez v9, :cond_3

    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 160
    :cond_3
    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "msg_box"

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string/jumbo v0, "resp_st"

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 162
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 160
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 163
    if-nez v10, :cond_4

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 167
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 178
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 179
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_5
    return-object v0

    .line 170
    :cond_6
    :try_start_2
    const-string/jumbo v0, "msg_box"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessageBox:I

    .line 171
    const-string/jumbo v0, "resp_st"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 174
    .local v11, "responseStatus":I
    if-eqz v11, :cond_7

    const/16 v0, 0x80

    if-eq v11, v0, :cond_7

    .line 175
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessageBox:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 179
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_8
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 177
    .end local v11    # "responseStatus":I
    :catchall_1
    move-exception v0

    .line 178
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 179
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_9
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "objects":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x0

    .line 187
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mLayout:Landroid/view/View;

    const v10, 0x7f0d002e

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessageDetailsText:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-direct {p0, v8}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->isSentGroupMms(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_0
    if-nez v8, :cond_1

    .line 192
    return-void

    :cond_0
    move v8, v9

    .line 188
    goto :goto_0

    .line 194
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 195
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 197
    return-void

    .line 199
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mLayout:Landroid/view/View;

    .line 200
    const v10, 0x7f0d002f

    .line 199
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 201
    .local v1, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    const/4 v6, 0x0

    .line 203
    .local v6, "participantAdded":Z
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->this$0:Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->-get0(Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "participant$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    .line 204
    .local v4, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "participantAddress":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mDeliveryInformation:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "deliveryInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 206
    .local v2, "deliveryInfo":Landroid/util/Pair;
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x81

    if-ne v8, v9, :cond_6

    .line 209
    const/4 v8, 0x2

    .line 208
    invoke-direct {p0, v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->addIndividualDeliveryInfo(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 214
    :goto_2
    const/4 v6, 0x1

    .line 219
    .end local v2    # "deliveryInfo":Landroid/util/Pair;
    :cond_4
    if-nez v6, :cond_5

    .line 221
    iget v8, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->mMessageBox:I

    packed-switch v8, :pswitch_data_0

    .line 232
    const/4 v8, 0x1

    .line 231
    invoke-direct {p0, v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->addIndividualDeliveryInfo(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 236
    :cond_5
    :goto_3
    const/4 v6, 0x0

    goto :goto_1

    .line 211
    .restart local v2    # "deliveryInfo":Landroid/util/Pair;
    :cond_6
    invoke-direct {p0, v0, v1, v7, v11}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->addIndividualDeliveryInfo(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    goto :goto_2

    .line 224
    .end local v2    # "deliveryInfo":Landroid/util/Pair;
    :pswitch_0
    const/4 v8, 0x3

    .line 223
    invoke-direct {p0, v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->addIndividualDeliveryInfo(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    goto :goto_3

    .line 227
    :pswitch_1
    invoke-direct {p0, v0, v1, v7, v11}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->addIndividualDeliveryInfo(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    goto :goto_3

    .line 186
    .end local v3    # "deliveryInfo$iterator":Ljava/util/Iterator;
    .end local v4    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v7    # "participantAddress":Ljava/lang/String;
    :cond_7
    return-void

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
