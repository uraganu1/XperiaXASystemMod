.class Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$2;->this$0:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$2;->this$0:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->-set0(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;I)I

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker$2;->this$0:Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;->-wrap1(Lcom/sonyericsson/android/socialphonebook/datepicker/DatePicker;)V

    .line 141
    return-void
.end method
