.class public final La3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime La3/a;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "-_.*"

.field public static final b:Ljava/lang/String; = "-._~!$\'()*,;&=@:"

.field public static final c:LT2/h;

.field public static final d:LT2/h;

.field public static final e:LT2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La3/k;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La3/k;-><init>(Ljava/lang/String;Z)V

    sput-object v0, La3/l;->c:LT2/h;

    new-instance v0, La3/k;

    const-string v1, "-._~!$\'()*,;&=@:+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La3/k;-><init>(Ljava/lang/String;Z)V

    sput-object v0, La3/l;->d:LT2/h;

    new-instance v0, La3/k;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v2}, La3/k;-><init>(Ljava/lang/String;Z)V

    sput-object v0, La3/l;->e:LT2/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LT2/h;
    .locals 1

    sget-object v0, La3/l;->c:LT2/h;

    return-object v0
.end method

.method public static b()LT2/h;
    .locals 1

    sget-object v0, La3/l;->e:LT2/h;

    return-object v0
.end method

.method public static c()LT2/h;
    .locals 1

    sget-object v0, La3/l;->d:LT2/h;

    return-object v0
.end method
