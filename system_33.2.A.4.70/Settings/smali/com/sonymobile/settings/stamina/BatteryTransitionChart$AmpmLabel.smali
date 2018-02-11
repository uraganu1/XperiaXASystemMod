.class Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;
.super Ljava/lang/Object;
.source "BatteryTransitionChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/BatteryTransitionChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmpmLabel"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final width:I

.field final x:I


# direct methods
.method constructor <init>(Landroid/text/TextPaint;ILjava/util/Calendar;)V
    .locals 3
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "x"    # I
    .param p3, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->x:I

    .line 144
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 146
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->label:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    .line 142
    return-void
.end method
