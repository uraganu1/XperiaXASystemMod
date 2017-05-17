.class public Lcom/sonyericsson/conversations/ui/RecipientsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecipientsAdapter.java"


# static fields
.field private static final PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mFilterPattern:Ljava/util/regex/Pattern;

.field private final mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

.field protected mIsRcsContactMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "data2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "data3"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "in_visible_group"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 80
    sput-object v0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "span"    # Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .prologue
    .line 95
    const v0, 0x7f03002c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mIsRcsContactMap:Ljava/util/HashSet;

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .line 98
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    .line 94
    return-void
.end method

.method private getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "aFilter"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 275
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getLabelText(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 258
    const-string/jumbo v6, "data1"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, "dataIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v6, "data2"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 261
    .local v5, "typeIndex":I
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 262
    .local v4, "type":I
    const-string/jumbo v6, "data3"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 263
    .local v3, "labelIndex":I
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "label":Ljava/lang/String;
    const-string/jumbo v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6

    .line 268
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6
.end method

.method private getSpecifyContactData(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 284
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

    .line 285
    const-string/jumbo v3, "(mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\') AND in_visible_group=1"

    const-string/jumbo v5, "display_name COLLATE LOCALIZED ASC,contact_id ASC,mimetype DESC"

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

    .line 289
    const-string/jumbo v3, "(mimetype=\'vnd.android.cursor.item/phone_v2\') AND in_visible_group=1"

    const-string/jumbo v5, "display_name COLLATE LOCALIZED ASC,contact_id ASC,mimetype DESC"

    .line 287
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private themeHighlightMatchingText(Ljava/lang/String;Ljava/util/regex/Pattern;I)Landroid/text/Spannable;
    .locals 6
    .param p1, "recipientAddress"    # Ljava/lang/String;
    .param p2, "filterPattern"    # Ljava/util/regex/Pattern;
    .param p3, "color"    # I

    .prologue
    .line 159
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 160
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 165
    :goto_0
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 166
    .local v0, "background":Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 167
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 170
    :cond_0
    return-object v2

    .line 163
    .end local v0    # "background":Landroid/text/style/BackgroundColorSpan;
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 175
    const-string/jumbo v13, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 176
    .local v9, "nameIndex":I
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "recipientName":Ljava/lang/String;
    const-string/jumbo v13, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 178
    .local v5, "dataIndex":I
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "recipientAddress":Ljava/lang/String;
    if-eqz v12, :cond_0

    if-nez v11, :cond_2

    .line 181
    :cond_0
    sget-boolean v13, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v13, :cond_1

    .line 182
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "cursorString":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 185
    .end local v4    # "cursorString":Ljava/lang/String;
    :cond_1
    return-void

    .line 190
    :cond_2
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 191
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 195
    :cond_3
    iget-object v13, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mIsRcsContactMap:Ljava/util/HashSet;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 196
    iget-object v13, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0e002f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 201
    .local v3, "color":I
    :goto_0
    iget-object v13, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mFilterPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0, v12, v13, v3}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->themeHighlightMatchingText(Ljava/lang/String;Ljava/util/regex/Pattern;I)Landroid/text/Spannable;

    move-result-object v8

    .line 202
    .local v8, "name":Landroid/text/Spannable;
    const v13, 0x7f0d006f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 203
    .local v10, "nameView":Landroid/widget/TextView;
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const v13, 0x7f0d0071

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 207
    .local v6, "label":Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->getLabelText(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 213
    .local v7, "labelText":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0xa0

    if-ne v13, v14, :cond_6

    .line 214
    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :goto_1
    iget-object v13, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mFilterPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0, v11, v13, v3}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->themeHighlightMatchingText(Ljava/lang/String;Ljava/util/regex/Pattern;I)Landroid/text/Spannable;

    move-result-object v1

    .line 221
    .local v1, "address":Landroid/text/Spannable;
    const v13, 0x7f0d0072

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 222
    .local v2, "addressView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    .line 198
    .end local v1    # "address":Landroid/text/Spannable;
    .end local v2    # "addressView":Landroid/widget/TextView;
    .end local v3    # "color":I
    .end local v6    # "label":Landroid/widget/TextView;
    .end local v7    # "labelText":Ljava/lang/CharSequence;
    .end local v8    # "name":Landroid/text/Spannable;
    .end local v10    # "nameView":Landroid/widget/TextView;
    :cond_5
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getThemeTextColorHighlight()I

    move-result v3

    .restart local v3    # "color":I
    goto :goto_0

    .line 216
    .restart local v6    # "label":Landroid/widget/TextView;
    .restart local v7    # "labelText":Ljava/lang/CharSequence;
    .restart local v8    # "name":Landroid/text/Spannable;
    .restart local v10    # "nameView":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string/jumbo v5, "Null cursor used!"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v5, ""

    return-object v5

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    const-string/jumbo v5, "Closed cursor used!"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v5, ""

    return-object v5

    .line 111
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    :cond_2
    const-string/jumbo v5, "Badly positioned cursor used!"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v5, ""

    return-object v5

    .line 115
    :cond_3
    const-string/jumbo v5, "data1"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "dataIndex":I
    if-gez v0, :cond_4

    .line 117
    const-string/jumbo v5, "Tried to access non existing column in cursor!"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v5, ""

    return-object v5

    .line 120
    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "number":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 122
    const-string/jumbo v5, ""

    return-object v5

    .line 124
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string/jumbo v5, "display_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, "nameIndex":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 129
    const-string/jumbo v1, ""

    .line 144
    :goto_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 145
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mIsRcsContactMap:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v3, v6, v7}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->buildRecipientBubble(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 148
    return-object v4

    .line 138
    .end local v4    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_6
    const-string/jumbo v5, ", "

    const-string/jumbo v6, " "

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ","

    const-string/jumbo v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected isImContact(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    .line 248
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/jms/contact/ImContactApi;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .line 247
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "filter":Ljava/lang/String;
    const/16 v4, 0x12

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mFilterPattern:Ljava/util/regex/Pattern;

    .line 230
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->getSpecifyContactData(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 231
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    if-eqz v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    const-string/jumbo v4, "data1"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, "dataIndex":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->isImContact(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mIsRcsContactMap:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "dataIndex":I
    :cond_1
    return-object v1

    .line 242
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "filter":Ljava/lang/String;
    :cond_2
    return-object v5
.end method
