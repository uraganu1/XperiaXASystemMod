.class Lcom/android/contacts/editor/EventFieldEditorView$2;
.super Ljava/lang/Object;
.source "EventFieldEditorView.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/datepicker/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EventFieldEditorView;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$isYearOptional:Z

.field final synthetic val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/EventFieldEditorView;
    .param p2, "val$isYearOptional"    # Z
    .param p3, "val$kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p4, "val$column"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    iput-boolean p2, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$isYearOptional:Z

    iput-object p3, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iput-object p4, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;III)V
    .locals 8
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v5, 0x0

    .line 244
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$isYearOptional:Z

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 251
    .local v0, "outCalendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 252
    if-nez p2, :cond_2

    const/16 v1, 0x7d0

    .line 253
    :goto_0
    const/16 v4, 0x8

    move v2, p3

    move v3, p4

    move v6, v5

    .line 252
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 256
    if-nez p2, :cond_3

    .line 257
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "resultString":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    iget-object v2, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$column:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/EventFieldEditorView;->-wrap0(Lcom/android/contacts/editor/EventFieldEditorView;)V

    .line 243
    return-void

    .line 244
    .end local v0    # "outCalendar":Ljava/util/Calendar;
    .end local v7    # "resultString":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .restart local v0    # "outCalendar":Ljava/util/Calendar;
    :cond_2
    move v1, p2

    .line 252
    goto :goto_0

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "resultString":Ljava/lang/String;
    goto :goto_1
.end method
