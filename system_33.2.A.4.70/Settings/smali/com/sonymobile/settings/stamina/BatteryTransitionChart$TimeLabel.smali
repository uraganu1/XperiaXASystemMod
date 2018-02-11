.class Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;
.super Ljava/lang/Object;
.source "BatteryTransitionChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/BatteryTransitionChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeLabel"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final width:I

.field final x:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/text/TextPaint;ILjava/util/Calendar;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "x"    # I
    .param p4, "cal"    # Ljava/util/Calendar;
    .param p5, "use24hr"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p3, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->x:I

    .line 123
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 125
    .local v1, "timeSdf":Ljava/text/SimpleDateFormat;
    if-eqz p5, :cond_1

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 127
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "k"

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 126
    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 132
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    :goto_1
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->label:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->label:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    .line 121
    return-void

    .line 127
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string/jumbo v2, "H"

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 130
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "K"

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 129
    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_1

    .line 130
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    const-string/jumbo v2, "h"

    goto :goto_2
.end method
