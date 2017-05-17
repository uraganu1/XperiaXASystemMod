.class public Lcom/sonymobile/conversations/proxy/ProxyService;
.super Ljava/lang/Object;
.source "ProxyService.java"


# instance fields
.field private mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

.field private mDevicePolicyManagerProxy:Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;

.field private mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

.field private mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

.field private mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactsContractProxy()Lcom/sonymobile/conversations/proxy/IContactsContractProxy;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/sonymobile/conversations/proxy/ContactsContractProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/ContactsContractProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    return-object v0
.end method

.method public getDevicePolicyManagerProxy()Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mDevicePolicyManagerProxy:Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mDevicePolicyManagerProxy:Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mDevicePolicyManagerProxy:Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;

    return-object v0
.end method

.method public getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    return-object v0
.end method

.method public getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/sonymobile/conversations/proxy/TelephonyProviderProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/TelephonyProviderProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    return-object v0
.end method

.method public getTelephonyServiceStateProxy()Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/sonymobile/conversations/proxy/TelephonyServiceStateProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/TelephonyServiceStateProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    return-object v0
.end method
