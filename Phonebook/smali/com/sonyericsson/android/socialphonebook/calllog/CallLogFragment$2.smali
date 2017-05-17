.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConferenceName(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 496
    const v1, 0x7f0e0069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 497
    .local v0, "nameView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 28
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfoIn"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 361
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    if-nez v24, :cond_0

    .line 363
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 364
    return-void

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 367
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 368
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 369
    return-void

    .line 372
    :cond_1
    const-string/jumbo v24, "number"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 374
    .local v20, "number":Ljava/lang/String;
    const-string/jumbo v24, "presentation"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 373
    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 375
    .local v21, "numberPresentation":I
    const-string/jumbo v24, "name"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 377
    .local v19, "name":Ljava/lang/String;
    const/16 v22, 0x0

    .line 378
    .local v22, "numberUri":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 379
    .local v18, "isVoicemail":Z
    const/4 v15, 0x0

    .line 380
    .local v15, "isSipNumber":Z
    const/16 v17, 0x0

    .line 381
    .local v17, "isTelNumber":Z
    const/16 v16, 0x0

    .line 382
    .local v16, "isSpecialNumber":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/database/Cursor;)Z

    move-result v14

    .line 384
    .local v14, "isConferenceCall":Z
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getNumberPresentationMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 387
    const/16 v16, 0x1

    .line 406
    .end local v22    # "numberUri":Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->getContactInfo(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    move-result-object v12

    .line 407
    .local v12, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    if-eqz v12, :cond_c

    iget-boolean v7, v12, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->hasContactData:Z

    .line 408
    :goto_1
    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 410
    :cond_2
    if-eqz v7, :cond_d

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    .line 412
    iget-object v0, v12, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 411
    invoke-static/range {v24 .. v25}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 423
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 424
    const/16 v24, 0x0

    const/16 v25, 0xd1

    const/16 v26, 0x0

    .line 425
    const v27, 0x7f090398

    .line 424
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    .line 426
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sonymobile/holla/CallPlusIntents;->getCallComposerIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    .line 424
    invoke-interface/range {v24 .. v25}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 429
    :cond_3
    if-eqz v12, :cond_4

    const-string/jumbo v24, "skype:"

    iget-object v0, v12, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->protocol:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 462
    :cond_4
    :goto_3
    if-nez v17, :cond_5

    if-eqz v15, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 463
    const/16 v24, 0x0

    const/16 v25, 0xce

    const/16 v26, 0x0

    const v27, 0x7f090372

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get13(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    .line 463
    invoke-interface/range {v24 .. v25}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 466
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 467
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/contactpicker/ConferenceContactsPickerFilter;

    invoke-direct {v9}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ConferenceContactsPickerFilter;-><init>()V

    .line 468
    .local v9, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v10

    .line 469
    .local v10, "filteredNumber":Z
    if-nez v10, :cond_7

    .line 470
    if-eqz v14, :cond_15

    .line 471
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->getConferenceName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 472
    const/16 v24, 0xca

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 473
    const/16 v24, 0xc9

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 474
    const/16 v24, 0xcb

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 475
    const/16 v24, 0xcc

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 476
    const/16 v24, 0xce

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 478
    const/16 v24, 0x0

    const/16 v25, 0xd0

    const/16 v26, 0x0

    .line 479
    const v27, 0x7f0903ba

    .line 478
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 490
    .end local v9    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    .end local v10    # "filteredNumber":Z
    :cond_7
    :goto_4
    const/16 v24, 0x0

    const/16 v25, 0xcd

    const/16 v26, 0x0

    const v27, 0x7f09009a

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 492
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 360
    return-void

    .line 388
    .end local v12    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .restart local v22    # "numberUri":Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 390
    const-string/jumbo v24, "voicemail_uri"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 389
    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "callerVoicemailUriString":Ljava/lang/String;
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 396
    :goto_5
    const-string/jumbo v24, "voicemail:x"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 397
    .local v22, "numberUri":Landroid/net/Uri;
    const/16 v18, 0x1

    .line 398
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 394
    .local v22, "numberUri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 399
    .end local v6    # "callerVoicemailUriString":Ljava/lang/String;
    :cond_a
    invoke-static/range {v20 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 400
    const-string/jumbo v24, "sip"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 401
    .local v22, "numberUri":Landroid/net/Uri;
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 403
    .local v22, "numberUri":Landroid/net/Uri;
    :cond_b
    const-string/jumbo v24, "tel"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 404
    .local v22, "numberUri":Landroid/net/Uri;
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 407
    .end local v22    # "numberUri":Landroid/net/Uri;
    .restart local v12    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    :cond_c
    const/4 v7, 0x0

    .local v7, "contactInfoPresent":Z
    goto/16 :goto_1

    .line 413
    .end local v7    # "contactInfoPresent":Z
    :cond_d
    if-eqz v18, :cond_e

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 415
    :cond_e
    if-eqz v16, :cond_f

    .line 416
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 419
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 418
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 420
    .local v11, "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 430
    .end local v11    # "formattedNumber":Ljava/lang/CharSequence;
    :cond_10
    if-eqz v7, :cond_11

    .line 431
    sget-object v24, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v12, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->personId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 432
    .local v23, "uri":Landroid/net/Uri;
    const/16 v24, 0x0

    const/16 v25, 0xca

    const/16 v26, 0x0

    const v27, 0x7f09006c

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    .line 433
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.intent.action.VIEW"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    invoke-interface/range {v24 .. v25}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 436
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_11
    if-nez v7, :cond_12

    if-eqz v22, :cond_12

    if-eqz v18, :cond_13

    .line 450
    :cond_12
    :goto_6
    if-eqz v22, :cond_4

    if-nez v18, :cond_4

    if-nez v15, :cond_4

    .line 451
    const/16 v24, 0x0

    const/16 v25, 0xcb

    const/16 v26, 0x0

    .line 452
    const v27, 0x7f090098

    .line 451
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    .line 453
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.intent.action.DIAL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 454
    const-string/jumbo v26, "internal_intent"

    const/16 v27, 0x1

    .line 453
    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v25

    .line 451
    invoke-interface/range {v24 .. v25}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isSmsAllowed(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 456
    const/16 v24, 0x0

    const/16 v25, 0xcc

    const/16 v26, 0x0

    const v27, 0x7f090096

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    .line 457
    invoke-static/range {v20 .. v20}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    .line 456
    invoke-interface/range {v24 .. v25}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 442
    :cond_13
    invoke-static/range {v20 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    if-nez v19, :cond_14

    .line 443
    invoke-static/range {v20 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->getUriName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 445
    :cond_14
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getAddToContactsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 446
    .local v13, "intent":Landroid/content/Intent;
    const/16 v24, 0x0

    const/16 v25, 0xc9

    const/16 v26, 0x0

    .line 447
    const v27, 0x7f090099

    .line 446
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 482
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v9    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    .restart local v10    # "filteredNumber":Z
    :cond_15
    if-nez v17, :cond_16

    if-eqz v15, :cond_7

    .line 483
    :cond_16
    const/16 v24, 0x0

    const/16 v25, 0xcf

    const/16 v26, 0x0

    .line 484
    const v27, 0x7f0903b9

    .line 483
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto/16 :goto_4
.end method
