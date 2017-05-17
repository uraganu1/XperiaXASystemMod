.class public Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;
.super Landroid/widget/CursorAdapter;
.source "CallsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsRead:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 50
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mIsRead:Z

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 56
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method

.method private getCallsTypeImageResourceId(ILandroid/database/Cursor;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return v0

    .line 160
    :pswitch_0
    const v0, 0x7f020040

    .line 161
    goto :goto_0

    .line 164
    :pswitch_1
    const v0, 0x7f020042

    .line 165
    goto :goto_0

    .line 168
    :pswitch_2
    const v0, 0x7f020041

    .line 169
    goto :goto_0

    .line 171
    :pswitch_3
    const-string/jumbo v2, "is_read"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 177
    .local v1, "isRead":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mIsRead:Z

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    const v0, 0x7f020046

    goto :goto_0

    .line 180
    :cond_1
    const v0, 0x7f020047

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;

    .line 73
    .local v22, "viewHolder":Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;
    const-string/jumbo v5, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 74
    .local v4, "callId":I
    const-string/jumbo v5, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 75
    .local v6, "date":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mContext:Landroid/content/Context;

    .line 76
    const/16 v10, 0x16

    move-wide v8, v6

    .line 75
    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "dateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mContext:Landroid/content/Context;

    .line 79
    const/4 v10, 0x1

    move-wide v8, v6

    .line 78
    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v20

    .line 81
    .local v20, "timeStr":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getLocation(I)Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, "location":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    const v5, 0x7f0e005b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 90
    .local v16, "networkImage":Landroid/widget/ImageView;
    if-eqz v16, :cond_0

    .line 91
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v5

    .line 90
    if-eqz v5, :cond_0

    .line 93
    const-string/jumbo v5, "subscription_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 92
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 94
    .local v17, "serialNum":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSlotIdByIccSerialNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 95
    .local v18, "slotId":I
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getNetworkIcon(I)I

    move-result v14

    .line 96
    .local v14, "iconId":I
    const/4 v5, -0x1

    if-eq v14, v5, :cond_0

    .line 97
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .end local v14    # "iconId":I
    .end local v17    # "serialNum":Ljava/lang/String;
    .end local v18    # "slotId":I
    :cond_0
    const-string/jumbo v5, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 103
    .local v21, "type":I
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mTypeImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->getCallsTypeImageResourceId(ILandroid/database/Cursor;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isUrgent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mUrgentCallIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mUrgentCallIcon:Landroid/widget/ImageView;

    .line 108
    const v8, 0x7f02003f

    .line 107
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->hasCallItems(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mCallItemsIcon:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mVideoCallIcon:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isHdVoiceCall(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 126
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mHdVoiceCallIcon:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getSubject(I)Ljava/lang/String;

    move-result-object v19

    .line 132
    .local v19, "subject":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 133
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mSubject:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_5
    const/4 v5, 0x3

    move/from16 v0, v21

    if-eq v0, v5, :cond_7

    const/4 v5, 0x4

    move/from16 v0, v21

    if-eq v0, v5, :cond_7

    .line 141
    const-string/jumbo v5, "duration"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 142
    .local v12, "duration":J
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mDurationView:Landroid/widget/TextView;

    .line 143
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {v8, v12, v13}, Lcom/android/contacts/util/DateUtils;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mDurationView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    .end local v12    # "duration":J
    :goto_6
    return-void

    .line 86
    .end local v16    # "networkImage":Landroid/widget/ImageView;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v21    # "type":I
    :cond_1
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 87
    const/4 v10, 0x0

    aput-object v20, v9, v10

    const/4 v10, 0x1

    aput-object v15, v9, v10

    .line 86
    const v10, 0x7f090399

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    .restart local v16    # "networkImage":Landroid/widget/ImageView;
    .restart local v21    # "type":I
    :cond_2
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mUrgentCallIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 116
    :cond_3
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mCallItemsIcon:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 122
    :cond_4
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mVideoCallIcon:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 128
    :cond_5
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mHdVoiceCallIcon:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 135
    .restart local v19    # "subject":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v19, v9, v10

    const v10, 0x7f09039a

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mSubject:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 146
    :cond_7
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;->mDurationView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    .local v1, "viewHolder":Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter$CallsViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    return-object v0
.end method

.method public setReadState()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->mIsRead:Z

    .line 189
    return-void
.end method
