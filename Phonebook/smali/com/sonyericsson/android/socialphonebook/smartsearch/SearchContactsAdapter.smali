.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SearchContactsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

.field private static final FLAG_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

.field private mContext:Landroid/content/Context;

.field private mGetCallPlusCapabilitiesTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnCallingFromListListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mSimContactPhoto:Landroid/graphics/drawable/Drawable;

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->values()[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->values()[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/photomanager/ContactPhotoManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoManager"    # Lcom/android/contacts/photomanager/ContactPhotoManager;

    .prologue
    .line 65
    const v0, 0x7f0400c8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    const v1, 0x7f0200b9

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mSimContactPhoto:Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method

.method private getListItemType(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 235
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 236
    .local v0, "resultType":I
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 238
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v1

    .line 239
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 240
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v1

    .line 242
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "value of resultType has an undefined value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private notifyOnCallingFromListListener(Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isContact"    # Z
    .param p3, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mOnCallingFromListListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mOnCallingFromListListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;->onCallingFromListRequested(Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 310
    :cond_0
    return-void
.end method

.method private setVideoCallIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isContact"    # Z

    .prologue
    .line 359
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 360
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->DIALPAD_FRAGMENT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 359
    invoke-interface {v1, v2, p2, p3}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    .line 361
    .local v0, "visiblity":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 366
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    :goto_0
    return-void

    .line 363
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateComposeCallIfHasCapabilities(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;Ljava/lang/String;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mGetCallPlusCapabilitiesTask:Landroid/os/AsyncTask;

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mGetCallPlusCapabilitiesTask:Landroid/os/AsyncTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    .line 115
    .local v24, "viewHolder":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;
    const/16 v2, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 116
    .local v21, "resultType":I
    if-eqz v21, :cond_0

    .line 117
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_4

    :cond_0
    move-object/from16 v12, p3

    .line 118
    check-cast v12, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;

    .line 120
    .local v12, "cursor":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;
    const/4 v2, 0x3

    .line 119
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 122
    .local v17, "number":Ljava/lang/CharSequence;
    const v2, 0x7f0e001c

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    const v3, 0x7f0e001c

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 124
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0e0020

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 125
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0x7f0e0020

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 126
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->videoCall:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->isNameMatchedItem()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    const/4 v2, 0x3

    .line 130
    invoke-virtual {v12, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getHighlightStyle(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 134
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->updateComposeCallIfHasCapabilities(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->setContext(Landroid/content/Context;)V

    .line 137
    const/4 v2, 0x4

    .line 136
    invoke-virtual {v12, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getHighlightStyle(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 138
    .local v16, "name":Ljava/lang/CharSequence;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 139
    .local v10, "contactId":I
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 141
    .local v20, "photoId":I
    const/4 v2, 0x7

    .line 140
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 143
    .local v9, "accountType":I
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v10

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 144
    .local v11, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    const v3, 0x7f0e0021

    invoke-virtual {v2, v3, v11}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 146
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->numberView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const/4 v13, 0x0

    .line 150
    .local v13, "label":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 151
    .local v22, "type":I
    if-nez v22, :cond_3

    .line 152
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "label":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->typeView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/16 v2, 0x9

    .line 159
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, "lookupKey":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 163
    .local v23, "uri":Landroid/net/Uri;
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 164
    .local v15, "lookupUri":Landroid/net/Uri;
    const v2, 0x7f0e0021

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 166
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->photoBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v15}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 168
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->numberView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->typeView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->photoBadge:Landroid/widget/QuickContactBadge;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 171
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->videoCall:Landroid/widget/ImageView;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->setVideoCallIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 173
    packed-switch v9, :pswitch_data_0

    .line 180
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->photoBadge:Landroid/widget/QuickContactBadge;

    move/from16 v0, v20

    int-to-long v4, v0

    int-to-long v6, v10

    .line 181
    sget-object v8, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 180
    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 113
    .end local v9    # "accountType":I
    .end local v10    # "contactId":I
    .end local v11    # "contactUri":Landroid/net/Uri;
    .end local v12    # "cursor":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;
    .end local v13    # "label":Ljava/lang/CharSequence;
    .end local v14    # "lookupKey":Ljava/lang/String;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v16    # "name":Ljava/lang/CharSequence;
    .end local v17    # "number":Ljava/lang/CharSequence;
    .end local v20    # "photoId":I
    .end local v22    # "type":I
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void

    .line 154
    .restart local v9    # "accountType":I
    .restart local v10    # "contactId":I
    .restart local v11    # "contactUri":Landroid/net/Uri;
    .restart local v12    # "cursor":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;
    .local v13, "label":Ljava/lang/CharSequence;
    .restart local v16    # "name":Ljava/lang/CharSequence;
    .restart local v17    # "number":Ljava/lang/CharSequence;
    .restart local v20    # "photoId":I
    .restart local v22    # "type":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    .local v13, "label":Ljava/lang/CharSequence;
    goto :goto_0

    .line 177
    .restart local v14    # "lookupKey":Ljava/lang/String;
    .restart local v15    # "lookupUri":Landroid/net/Uri;
    .restart local v23    # "uri":Landroid/net/Uri;
    :pswitch_1
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->photoBadge:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mSimContactPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 183
    .end local v9    # "accountType":I
    .end local v10    # "contactId":I
    .end local v11    # "contactUri":Landroid/net/Uri;
    .end local v12    # "cursor":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;
    .end local v13    # "label":Ljava/lang/CharSequence;
    .end local v14    # "lookupKey":Ljava/lang/String;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v16    # "name":Ljava/lang/CharSequence;
    .end local v17    # "number":Ljava/lang/CharSequence;
    .end local v20    # "photoId":I
    .end local v22    # "type":I
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_2

    move-object/from16 v12, p3

    .line 184
    check-cast v12, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;

    .line 186
    .restart local v12    # "cursor":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;
    const/4 v2, 0x1

    .line 185
    invoke-virtual {v12, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 188
    .local v18, "number":Ljava/lang/String;
    const v2, 0x7f0e001c

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 189
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0e0020

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 190
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    const v3, 0x7f0e001c

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 191
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0x7f0e0020

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->updateComposeCallIfHasCapabilities(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getHighlightStyle(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 198
    .local v19, "numberStyle":Ljava/lang/CharSequence;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->nameView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v2, 0x7f0e001c

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 320
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mSimContactPhoto:Landroid/graphics/drawable/Drawable;

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->clearCache()V

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mGetCallPlusCapabilitiesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mGetCallPlusCapabilitiesTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mGetCallPlusCapabilitiesTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 316
    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 248
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->getListItemType(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->getValue()I

    move-result v1

    return v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->getCount()I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 78
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->-getcom_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues()[I

    move-result-object v2

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->getViewType(I)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 108
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "ViewType state unknown"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400c8

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;-><init>(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/util/ListItemType;)V

    .line 84
    .local v1, "viewHolder":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->photoBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->photoBadge:Landroid/widget/QuickContactBadge;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->videoCall:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->videoCall:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    return-object v0

    .line 97
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400cb

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;-><init>(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/util/ListItemType;)V

    .line 99
    .restart local v1    # "viewHolder":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;->prepareCall:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    return-object v0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 269
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onClick wrong item clicked"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 256
    :sswitch_0
    instance-of v2, p1, Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 257
    check-cast v2, Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 261
    :sswitch_1
    const v2, 0x7f0e001c

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sonymobile/holla/CallPlusIntents;->getCallComposerIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    .end local v1    # "number":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, "callNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v3, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x7f0e0055 -> :sswitch_1
        0x7f0e005c -> :sswitch_2
        0x7f0e0204 -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 297
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onItemClick wrong item clicked"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 280
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;

    .line 281
    .local v4, "scView":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$SearchContactItemView;
    if-eqz v4, :cond_0

    .line 286
    const v5, 0x7f0e001c

    :try_start_0
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 287
    .local v3, "number":Ljava/lang/String;
    const v5, 0x7f0e0020

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 288
    .local v2, "isContact":Z
    const v5, 0x7f0e0021

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 289
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v3, v2, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->notifyOnCallingFromListListener(Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 291
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "search result item clicked, number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v2    # "isContact":Z
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x7f0e0203 -> :sswitch_0
        0x7f0e0207 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V
    .locals 0
    .param p1, "callPlusConnector"    # Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 302
    return-void
.end method

.method setOnCallingFromListListener(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mOnCallingFromListListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter$OnCallingFromListListener;

    .line 306
    return-void
.end method

.method public setViltePlugin(Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;)V
    .locals 0
    .param p1, "viltePlugin"    # Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 371
    return-void
.end method
