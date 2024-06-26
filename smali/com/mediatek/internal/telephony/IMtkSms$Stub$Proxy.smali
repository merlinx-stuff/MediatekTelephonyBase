.class Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkSms.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkSms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkSms$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 922
    return-void
.end method


# virtual methods
.method public blacklist activateCellBroadcastSmsForSubscriber(IZ)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1667
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1671
    .local v4, "_status":Z
    if-nez v4, :cond_1

    .line 1672
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1673
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    return v2

    .line 1676
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1680
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    nop

    .line 1683
    return v2

    .line 1680
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 981
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 984
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 985
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 986
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 987
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 988
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 989
    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 990
    move/from16 v11, p6

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 992
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 993
    .local v0, "_status":Z
    if-nez v0, :cond_0

    .line 994
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 995
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1002
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 995
    return v3

    .line 998
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 999
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 1002
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    nop

    .line 1005
    return v0

    .line 1002
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move-object/from16 v13, p2

    :goto_1
    move-object/from16 v14, p3

    :goto_2
    move-object/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    throw v0
.end method

.method public blacklist getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 951
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 952
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 953
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    return-object v3

    .line 956
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 957
    sget-object v3, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 960
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 962
    nop

    .line 963
    return-object v2

    .line 960
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 962
    throw v2
.end method

.method public blacklist getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1829
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1830
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1831
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1831
    return-object v3

    .line 1834
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1835
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1838
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1840
    nop

    .line 1841
    return-object v2

    .line 1838
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1840
    throw v2
.end method

.method public blacklist getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1763
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1766
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1767
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1768
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    return-object v3

    .line 1771
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1772
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1775
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1777
    nop

    .line 1778
    return-object v2

    .line 1775
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1777
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 929
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    return-object v0
.end method

.method public blacklist getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1603
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1604
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1605
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1606
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    return-object v3

    .line 1609
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1611
    sget-object v3, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsRawData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/android/internal/telephony/SmsRawData;
    goto :goto_0

    .line 1614
    .end local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    const/4 v3, 0x0

    .line 1618
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    nop

    .line 1621
    return-object v3

    .line 1618
    .end local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    throw v2
.end method

.method public blacklist getScAddressForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1859
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1860
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1861
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getScAddressForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    return-object v3

    .line 1864
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1868
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    nop

    .line 1871
    return-object v2

    .line 1868
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    throw v2
.end method

.method public blacklist getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1889
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1890
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1891
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    return-object v3

    .line 1894
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1895
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1896
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 1899
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    .line 1903
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    nop

    .line 1906
    return-object v3

    .line 1903
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    throw v2
.end method

.method public blacklist getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1526
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1528
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1529
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1530
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1531
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1532
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    return-object v3

    .line 1535
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1537
    sget-object v3, Lmediatek/telephony/MtkSmsParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediatek/telephony/MtkSmsParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lmediatek/telephony/MtkSmsParameters;
    goto :goto_0

    .line 1540
    .end local v3    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :cond_1
    const/4 v3, 0x0

    .line 1544
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    nop

    .line 1547
    return-object v3

    .line 1544
    .end local v3    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    throw v2
.end method

.method public blacklist getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1153
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1154
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1155
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    return-object v3

    .line 1158
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1160
    sget-object v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    goto :goto_0

    .line 1163
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_1
    const/4 v3, 0x0

    .line 1167
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    nop

    .line 1170
    return-object v3

    .line 1167
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    throw v2
.end method

.method public blacklist insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1369
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1370
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1371
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1372
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1373
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1373
    return-object v3

    .line 1376
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1378
    sget-object v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediatek/telephony/MtkSimSmsInsertStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    goto :goto_0

    .line 1381
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :cond_1
    const/4 v3, 0x0

    .line 1385
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1387
    nop

    .line 1388
    return-object v3

    .line 1385
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1387
    throw v2
.end method

.method public blacklist insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1315
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1316
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1319
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1320
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1321
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1322
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1323
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1325
    move/from16 v11, p6

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1327
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1328
    .local v0, "_status":Z
    if-nez v0, :cond_0

    .line 1329
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1330
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1342
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    return-object v3

    .line 1333
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1334
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1335
    sget-object v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediatek/telephony/MtkSimSmsInsertStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v3, "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    goto :goto_0

    .line 1338
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :cond_1
    const/4 v3, 0x0

    .line 1342
    .end local v0    # "_status":Z
    .restart local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    nop

    .line 1345
    return-object v3

    .line 1342
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_1
    move-object/from16 v13, p2

    :goto_2
    move-object/from16 v14, p3

    :goto_3
    move-object/from16 v15, p4

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    throw v0
.end method

.method public blacklist isSmsReadyForSubscriber(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1085
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1088
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1091
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1092
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1093
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->isSmsReadyForSubscriber(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1093
    return v3

    .line 1096
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1100
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    nop

    .line 1103
    return v2

    .line 1100
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    throw v2
.end method

.method public blacklist queryCellBroadcastSmsActivationForSubscriber(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1639
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1640
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1641
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1641
    return v3

    .line 1644
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1645
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1648
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1650
    nop

    .line 1651
    return v2

    .line 1648
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1650
    throw v2
.end method

.method public blacklist removeCellBroadcastMsgForSubscriber(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "channelId"    # I
    .param p3, "serialId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1696
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1699
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1704
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1705
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1706
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    return v3

    .line 1709
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1713
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    nop

    .line 1716
    return v2

    .line 1713
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw v2
.end method

.method public blacklist sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "originalPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1037
    .local v13, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 1039
    .local v14, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1040
    move/from16 v15, p1

    :try_start_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    move-object/from16 v10, p2

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v9, p3

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    move-object/from16 v8, p4

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1044
    move/from16 v7, p5

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    move/from16 v6, p6

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    move-object/from16 v5, p7

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1047
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1048
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    invoke-virtual {v11, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1052
    :cond_0
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    :goto_0
    if-eqz v12, :cond_1

    .line 1055
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    invoke-virtual {v12, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1059
    :cond_1
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    :goto_1
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v13, v14, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1062
    .local v0, "_status":Z
    if-nez v0, :cond_2

    .line 1063
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1064
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1065
    return-void

    .line 1068
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1071
    .end local v0    # "_status":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1073
    nop

    .line 1074
    return-void

    .line 1071
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move/from16 v15, p1

    :goto_2
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1073
    throw v0
.end method

.method public blacklist sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1274
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1276
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1277
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1278
    move-object/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1279
    move-object/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1280
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1281
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1282
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1284
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1285
    const/4 v0, 0x0

    if-eqz p9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    move-object/from16 v7, p0

    iget-object v3, v7, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1287
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 1288
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1289
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/mediatek/internal/telephony/IMtkSms;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1296
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1290
    return-void

    .line 1293
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1296
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    nop

    .line 1299
    return-void

    .line 1296
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_1
    move-object/from16 v14, p2

    :goto_2
    move-object/from16 v15, p3

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    throw v0
.end method

.method public blacklist sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v11, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 1482
    .local v12, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1484
    .local v13, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1485
    move/from16 v14, p1

    :try_start_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1486
    move-object/from16 v15, p2

    :try_start_2
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1487
    move-object/from16 v10, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v9, p4

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1489
    move-object/from16 v8, p5

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1490
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1491
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1495
    :cond_0
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    :goto_0
    move-object/from16 v7, p7

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1498
    move-object/from16 v6, p8

    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1499
    if-eqz p9, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    invoke-interface {v0, v2, v12, v13, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1501
    .local v0, "_status":Z
    if-nez v0, :cond_2

    .line 1502
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1503
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1510
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1504
    return-void

    .line 1507
    :cond_2
    :try_start_3
    invoke-virtual {v13}, Landroid/os/Parcel;->readException()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1510
    .end local v0    # "_status":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1512
    nop

    .line 1513
    return-void

    .line 1510
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v14, p1

    :goto_2
    move-object/from16 v15, p2

    :goto_3
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1512
    throw v0
.end method

.method public blacklist sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1204
    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1205
    .local v13, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 1207
    .local v14, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1208
    move/from16 v15, p1

    :try_start_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    move-object/from16 v10, p2

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1210
    move-object/from16 v9, p3

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1211
    move-object/from16 v8, p4

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    move-object/from16 v7, p5

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1213
    move/from16 v6, p6

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1215
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    invoke-virtual {v11, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    :goto_0
    if-eqz v12, :cond_1

    .line 1222
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    invoke-virtual {v12, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1226
    :cond_1
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    :goto_1
    if-eqz p9, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    invoke-interface {v0, v2, v13, v14, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1230
    .local v0, "_status":Z
    if-nez v0, :cond_3

    .line 1231
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1232
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1233
    return-void

    .line 1236
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1239
    .end local v0    # "_status":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1241
    nop

    .line 1242
    return-void

    .line 1239
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v15, p1

    :goto_3
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1241
    throw v0
.end method

.method public blacklist sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1411
    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 1412
    .local v14, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 1414
    .local v15, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1415
    move/from16 v10, p1

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    move-object/from16 v9, p2

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1417
    move-object/from16 v8, p3

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1418
    move-object/from16 v7, p4

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1419
    move-object/from16 v6, p5

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1420
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1421
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    invoke-virtual {v11, v14, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1425
    :cond_0
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    :goto_0
    if-eqz v12, :cond_1

    .line 1428
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    invoke-virtual {v12, v14, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1432
    :cond_1
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    :goto_1
    if-eqz v13, :cond_2

    .line 1435
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1436
    invoke-virtual {v13, v14, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1439
    :cond_2
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    :goto_2
    if-eqz p9, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    invoke-interface {v0, v2, v14, v15, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1443
    .local v0, "_status":Z
    if-nez v0, :cond_4

    .line 1444
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1445
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1446
    return-void

    .line 1449
    :cond_4
    :try_start_1
    invoke-virtual {v15}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    .end local v0    # "_status":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1454
    nop

    .line 1455
    return-void

    .line 1452
    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1454
    throw v0
.end method

.method public blacklist setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1797
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1798
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1799
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1800
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1800
    return v3

    .line 1803
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1804
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1807
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1809
    nop

    .line 1810
    return v2

    .line 1807
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1809
    throw v2
.end method

.method public blacklist setEtwsConfigForSubscriber(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1729
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1732
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1736
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1737
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1738
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setEtwsConfigForSubscriber(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    return v3

    .line 1741
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1745
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    nop

    .line 1748
    return v2

    .line 1745
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    throw v2
.end method

.method public blacklist setScAddressForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1925
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1926
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1927
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1928
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setScAddressForSubscriber(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1928
    return v3

    .line 1931
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1932
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1935
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    nop

    .line 1938
    return v2

    .line 1935
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    throw v2
.end method

.method public blacklist setSmsMemoryStatusForSubscriber(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1122
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1123
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1124
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setSmsMemoryStatusForSubscriber(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1125
    return-void

    .line 1128
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1133
    nop

    .line 1134
    return-void

    .line 1131
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1133
    throw v2
.end method

.method public blacklist setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "params"    # Lmediatek/telephony/MtkSmsParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1563
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 1564
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    invoke-virtual {p3, v0, v3}, Lmediatek/telephony/MtkSmsParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1568
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1571
    .local v4, "_status":Z
    if-nez v4, :cond_1

    .line 1572
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1573
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1573
    return v2

    .line 1576
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1580
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    nop

    .line 1583
    return v2

    .line 1580
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    throw v2
.end method
