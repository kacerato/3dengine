.class public final Lwg/N$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQf/j$c<",
        "Lwg/N;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Lwg/N$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/N$b;

    invoke-direct {v0}, Lwg/N$b;-><init>()V

    sput-object v0, Lwg/N$b;->b:Lwg/N$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
