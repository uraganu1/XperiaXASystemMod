.class Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProxyEventData.java"


# instance fields
.field final mAction:Ljava/lang/String;

.field final mCategory:Ljava/lang/String;

.field final mLabel:Ljava/lang/String;

.field final mValue:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mCategory:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mAction:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mLabel:Ljava/lang/String;

    .line 43
    iput-wide p4, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mValue:J

    .line 39
    return-void
.end method
