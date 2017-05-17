.class Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ConversationPickerDialog.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;
.implements Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;,
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;",
        ">;",
        "Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;",
        "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;"
    }
.end annotation


# static fields
.field private static synthetic -android_os_AsyncTask$StatusSwitchesValues:[I


# instance fields
.field private mCounter:I

.field private mDataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;


# direct methods
.method private static synthetic -getandroid_os_AsyncTask$StatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->-android_os_AsyncTask$StatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->-android_os_AsyncTask$StatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/AsyncTask$Status;->values()[Landroid/os/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->-android_os_AsyncTask$StatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mCounter:I

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mDataset:Ljava/util/List;

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->init()V

    .line 251
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->addContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    new-instance v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;-><init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-set1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    .line 259
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->isConversationItemsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public handleListDoneUpdating(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mDataset:Ljava/util/List;

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->notifyDataSetChanged()V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-wrap0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;I)V

    .line 183
    return-void
.end method

.method public handleListUpdateTick(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;>;"
    const/16 v0, 0xf

    .line 194
    .local v0, "REFRESH_THRESHOLD":I
    iget v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mCounter:I

    .line 195
    iget v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mCounter:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mDataset:Ljava/util/List;

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->notifyDataSetChanged()V

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->getItemCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-wrap0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;I)V

    .line 203
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mCounter:I

    .line 191
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 290
    check-cast p1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->onBindViewHolder(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    .line 291
    check-cast v2, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    .line 292
    .local v2, "item":Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;

    .line 293
    .local v1, "data":Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;
    iget-object v5, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mConversationItem:Lcom/sonyericsson/conversations/conversation/ConversationItem;

    iget-object v5, v5, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-static {v2, v5}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-set0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 296
    iget-object v5, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mParticipants:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 297
    iget-object v5, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mParticipants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 298
    .local v3, "numParticipants":I
    iget-object v5, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mConversationItem:Lcom/sonyericsson/conversations/conversation/ConversationItem;

    iget-object v5, v5, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v5}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    .line 299
    .local v4, "type":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    if-gt v3, v6, :cond_0

    if-ne v3, v6, :cond_2

    .line 300
    sget-object v5, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v4, v5, :cond_2

    .line 301
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get3(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 302
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v5

    iget-object v6, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mParticipants:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showGroupContact(Ljava/util/List;)V

    .line 315
    .end local v3    # "numParticipants":I
    .end local v4    # "type":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get3(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mTitleText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v5, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mSecondaryText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 318
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mSecondaryText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :goto_1
    return-void

    .line 303
    .restart local v3    # "numParticipants":I
    .restart local v4    # "type":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    :cond_2
    if-ne v3, v6, :cond_3

    .line 304
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get3(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 305
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v6

    iget-object v5, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mParticipants:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v6, v5}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0

    .line 306
    :cond_3
    if-nez v3, :cond_1

    .line 307
    iget-object v5, v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;->mConversationItem:Lcom/sonyericsson/conversations/conversation/ConversationItem;

    iget-object v0, v5, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 308
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 309
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v6, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0

    .line 311
    :cond_4
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showDraftImage()V

    goto :goto_0

    .line 321
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "numParticipants":I
    .end local v4    # "type":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    :cond_5
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;->-get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onConversationItemChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->isConversationItemsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->-getandroid_os_AsyncTask$StatusSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    new-instance v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;-><init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-set1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->this$0:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->-get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 285
    const v2, 0x7f030008

    const/4 v3, 0x0

    .line 284
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter$ItemViewHolder;-><init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;Landroid/view/View;)V

    return-object v1
.end method
