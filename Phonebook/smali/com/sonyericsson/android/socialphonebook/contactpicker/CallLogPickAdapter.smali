.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "CallLogPickAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;,
        Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;
    }
.end annotation


# static fields
.field public static final REDRAW:I = 0x1

.field public static final START_THREAD:I = 0x2


# instance fields
.field private mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

.field private mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mContext:Landroid/content/Context;

.field private mDrawableIncoming:Landroid/graphics/drawable/Drawable;

.field private mDrawableMissed:Landroid/graphics/drawable/Drawable;

.field private mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field protected mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
    .param p3, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .param p4, "queryCommandCreator"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .prologue
    const/4 v2, 0x0

    .line 92
    const v0, 0x7f040038

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mLoading:Z

    .line 302
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    .line 96
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 97
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->setAdapterHandler(Landroid/os/Handler;)V

    .line 101
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x7f020040

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    const v1, 0x7f020042

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    const v1, 0x7f020041

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    .line 91
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;

    .line 144
    .local v29, "views":Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;
    const-string/jumbo v6, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 145
    .local v23, "number":Ljava/lang/String;
    const-string/jumbo v6, "presentation"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 146
    .local v25, "numberPresentation":I
    const-string/jumbo v6, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "callerName":Ljava/lang/String;
    const-string/jumbo v6, "numbertype"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 149
    .local v13, "callerNumberType":I
    const-string/jumbo v6, "numberlabel"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 148
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "callerNumberLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    move-result-object v18

    .line 154
    .local v18, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 155
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    move/from16 v22, v0

    .line 156
    .local v22, "ntype":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 160
    .local v19, "label":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 167
    :cond_0
    :goto_0
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 168
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/16 v24, 0x0

    .line 173
    .local v24, "numberLabel":Ljava/lang/CharSequence;
    if-ltz v22, :cond_1

    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    .end local v24    # "numberLabel":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 178
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_2
    :goto_2
    const-string/jumbo v6, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 203
    .local v28, "type":I
    const-string/jumbo v6, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 204
    .local v2, "date":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 207
    .local v4, "now":J
    const/high16 v8, 0x40000

    .line 209
    .local v8, "flags":I
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 213
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 214
    .local v20, "local":Landroid/text/format/Time;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 215
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v16, v0

    .line 216
    .local v16, "gmtoff":J
    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v7

    sub-int v15, v6, v7

    .line 218
    .local v15, "days":I
    int-to-long v6, v15

    const-wide/32 v30, 0x5265c00

    mul-long v6, v6, v30

    add-long v2, v4, v6

    .line 221
    .end local v15    # "days":I
    .end local v16    # "gmtoff":J
    .end local v20    # "local":Landroid/text/format/Time;
    :cond_3
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    .line 222
    const-wide/32 v6, 0xea60

    .line 221
    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 225
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_4

    .line 227
    const-string/jumbo v6, "call_items"

    .line 226
    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 228
    .local v10, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getSize()I

    move-result v14

    .line 229
    .local v14, "count":I
    const/4 v6, 0x1

    if-le v14, v6, :cond_c

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 232
    .local v27, "text":Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->typeView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    .end local v10    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .end local v14    # "count":I
    .end local v27    # "text":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v6, :cond_5

    .line 260
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mFirst:Z

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 141
    :cond_5
    return-void

    .line 161
    .end local v2    # "date":J
    .end local v4    # "now":J
    .end local v8    # "flags":I
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v28    # "type":I
    :cond_6
    move-object/from16 v21, v11

    .line 162
    move/from16 v22, v13

    .line 163
    move-object/from16 v19, v12

    goto/16 :goto_0

    .line 175
    .restart local v24    # "numberLabel":Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 174
    move/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v6, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .local v24, "numberLabel":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 181
    .end local v24    # "numberLabel":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 184
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 187
    const/4 v6, 0x1

    move/from16 v0, v25

    if-eq v0, v6, :cond_a

    .line 188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getNumberPresentationMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v26

    .line 197
    .local v26, "text":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 189
    .end local v26    # "text":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "text":Ljava/lang/CharSequence;
    goto :goto_4

    .line 193
    .end local v26    # "text":Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v26

    .restart local v26    # "text":Ljava/lang/CharSequence;
    goto :goto_4

    .line 237
    .end local v26    # "text":Ljava/lang/CharSequence;
    .restart local v2    # "date":J
    .restart local v4    # "now":J
    .restart local v8    # "flags":I
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .restart local v14    # "count":I
    .restart local v28    # "type":I
    :cond_c
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->typeView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    packed-switch v28, :pswitch_data_0

    goto/16 :goto_3

    .line 242
    :pswitch_0
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->typeView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 246
    :pswitch_1
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->typeView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 250
    :pswitch_2
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->typeView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 117
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 118
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;)V

    .line 128
    .local v1, "views":Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;
    const v2, 0x7f0e0069

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->nameView:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f0e0052

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    .line 130
    const v2, 0x7f0e0053

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    .line 131
    const v2, 0x7f0e0057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f0e00ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    .line 133
    const v2, 0x7f0e00aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$RecentCallsListItemViews;->typeView:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;->create()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->queryAsync(Ljava/lang/Runnable;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 280
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mFirst:Z

    .line 296
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public releasePreDrawListener()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 111
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->mLoading:Z

    .line 325
    return-void
.end method
