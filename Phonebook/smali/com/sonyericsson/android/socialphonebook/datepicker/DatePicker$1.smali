.class final Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field final mFormatter:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    .line 94
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 94
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mFormatter:Ljava/util/Formatter;

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mArgs:[Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%02d"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$1;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
