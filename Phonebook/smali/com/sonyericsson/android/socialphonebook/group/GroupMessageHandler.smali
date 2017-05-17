.class public Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;
.super Ljava/lang/Object;
.source "GroupMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;
    }
.end annotation


# static fields
.field private static final LOADER_MEMBERS_DATA:I = 0x0

.field public static final MODE_SEND_GROUP_EMAIL:I = 0x4

.field public static final MODE_SEND_GROUP_MESSAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GroupMessageHandler"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mContactEmailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContactPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private mGroupMemberIdList:[J

.field private mGroupMemberRawIdList:[J

.field private final mGroupMembersDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

.field private mMaxMmsRecipientNum:I

.field private mSendPhoneNumberList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)[J
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberRawIdList:[J

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->updateGroupMembersDataSet(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "frag"    # Landroid/app/Fragment;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mMaxMmsRecipientNum:I

    .line 114
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMembersDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->getMmsMaxRecipientNum()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mMaxMmsRecipientNum:I

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    .line 72
    return-void
.end method

.method private collectGroupMessageNumber(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "contactPhoneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    const/4 v11, 0x0

    .line 338
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->clear()V

    .line 339
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v5, "noPrimaryMemberIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 342
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 344
    .local v2, "contactEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contactEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    .local v0, "contactEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 348
    .local v8, "phonelist":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 349
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;

    iget-object v9, v9, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->number:Ljava/lang/String;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_1
    const/4 v4, 0x0

    .line 358
    .local v4, "hasPrimary":Z
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "phone$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;

    .line 359
    .local v6, "phone":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    iget-boolean v9, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->isSuperPrimary:Z

    if-eqz v9, :cond_2

    .line 360
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    iget-object v10, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->number:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    const/4 v4, 0x1

    .line 365
    .end local v6    # "phone":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    :cond_3
    if-nez v4, :cond_0

    .line 366
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    .end local v0    # "contactEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    .end local v1    # "contactEntry$iterator":Ljava/util/Iterator;
    .end local v2    # "contactEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;>;"
    .end local v4    # "hasPrimary":Z
    .end local v7    # "phone$iterator":Ljava/util/Iterator;
    .end local v8    # "phonelist":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 373
    invoke-static {v5, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->newInstance(Ljava/util/ArrayList;Ljava/util/HashMap;)Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    move-result-object v3

    .line 375
    .local v3, "dialog":Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v9, v11}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 376
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string/jumbo v10, "selectPhoneNumber"

    invoke-virtual {v3, v9, v10}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 377
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushSmsEvent(Landroid/content/Context;)V

    .line 378
    return-void

    .line 380
    .end local v3    # "dialog":Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 381
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090275

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 337
    :goto_1
    return-void

    .line 384
    :cond_6
    const-string/jumbo v9, "sms"

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->sendGroupResult(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private sendGroupResult(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p2, "recipientList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v4, "sendAddress":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 395
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SENDTO"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 397
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 399
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_1
    return-void

    .line 400
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v6, "GroupMessageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No activity found for intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPicker(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mAccountType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "account infomation cannot empty!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "group_account_type"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v2, "group_account_name"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v2, "has_tab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string/jumbo v2, "send_group_message_or_email"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberIdList:[J

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberIdList:[J

    array-length v2, v2

    if-lez v2, :cond_2

    .line 180
    const-string/jumbo v2, "group_member_ids"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberIdList:[J

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 182
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    return-void

    .line 185
    :pswitch_0
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.action.PICK_CONVERSATIONS_TARGET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mMaxMmsRecipientNum:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 190
    :pswitch_1
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string/jumbo v2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const-string/jumbo v2, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "GroupMessageHandler"

    const-string/jumbo v3, "Cannot found Acitivity to handle intent!"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateGroupMembersDataSet(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    const-string/jumbo v4, "GroupMessageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    .line 287
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    .line 289
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;-><init>()V

    .line 293
    .local v0, "dataItem":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->id:J

    .line 296
    const/4 v4, 0x0

    .line 295
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->rawContactId:J

    .line 298
    const/4 v4, 0x6

    .line 297
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->contactName:Ljava/lang/String;

    .line 300
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->type:I

    .line 302
    const/4 v4, 0x4

    .line 301
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->label:Ljava/lang/String;

    .line 304
    const/4 v4, 0x2

    .line 303
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->number:Ljava/lang/String;

    .line 306
    const/4 v4, 0x3

    .line 305
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 307
    .local v1, "isSuperPrimary":I
    if-nez v1, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->isSuperPrimary:Z

    .line 309
    const/4 v4, 0x7

    .line 308
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->mimetype:Ljava/lang/String;

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 313
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    .line 318
    .end local v3    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    :cond_1
    :goto_1
    if-nez v3, :cond_5

    .line 329
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 332
    .end local v0    # "dataItem":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    .end local v1    # "isSuperPrimary":I
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 283
    return-void

    .restart local v0    # "dataItem":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    .restart local v1    # "isSuperPrimary":I
    :cond_3
    move v4, v6

    .line 307
    goto :goto_0

    .line 314
    .restart local v3    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    :cond_4
    :try_start_1
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    .local v3, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    goto :goto_1

    .line 322
    .end local v3    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    :cond_5
    iget-wide v8, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->rawContactId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 323
    iget-wide v8, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->rawContactId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 331
    .end local v0    # "dataItem":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    .end local v1    # "isSuperPrimary":I
    :catchall_0
    move-exception v4

    .line 332
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 331
    throw v4

    .line 325
    .restart local v0    # "dataItem":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    .restart local v1    # "isSuperPrimary":I
    :cond_6
    :try_start_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 326
    .local v2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;"
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-wide v8, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->rawContactId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public getAvailableMemberCount(I)I
    .locals 2
    .param p1, "actionCode"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "avail":I
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSendPhoneNumberList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    .line 208
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushSmsEvent(Landroid/content/Context;)V

    .line 212
    const-string/jumbo v0, "sms"

    .line 213
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->sendGroupResult(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushEmailEvent(Landroid/content/Context;)V

    .line 217
    const-string/jumbo v0, "mailto"

    .line 218
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 217
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->sendGroupResult(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClickSendEmail()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberRawIdList:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberRawIdList:[J

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 244
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactEmailMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    :cond_2
    return-void

    .line 248
    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->startPicker(I)V

    .line 240
    return-void
.end method

.method public onClickSendMessage()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberRawIdList:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberRawIdList:[J

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 230
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    :cond_2
    return-void

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mMaxMmsRecipientNum:I

    if-gt v0, v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->collectGroupMessageNumber(Ljava/util/HashMap;)V

    .line 226
    :goto_0
    return-void

    .line 236
    :cond_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->startPicker(I)V

    goto :goto_0
.end method

.method public onDoneButtonPressed(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .line 421
    .local v0, "data":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mPrimaryData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mPrimaryData:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    .end local v0    # "data":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 426
    const-string/jumbo v2, "sms"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->sendGroupResult(Ljava/lang/String;Ljava/util/Collection;)V

    .line 419
    :cond_2
    return-void
.end method

.method public setUpdateListner(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;

    .line 258
    return-void
.end method

.method public startGroupMembersDataLoader([J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "groupMemberRawIdList"    # [J
    .param p2, "groupMemberContactIdList"    # [J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberRawIdList:[J

    .line 88
    :goto_0
    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberIdList:[J

    .line 93
    :goto_1
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mAccountName:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mAccountType:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMembersDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 97
    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 82
    return-void

    .line 86
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberRawIdList:[J

    goto :goto_0

    .line 91
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mGroupMemberIdList:[J

    goto :goto_1
.end method

.method public updateSendPhoneNumberList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->mSendPhoneNumberList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 411
    return-void
.end method
