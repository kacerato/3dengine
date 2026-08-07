.class public final LR2/x;
.super LR2/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build LQ2/c;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR2/x$a;
    }
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final b:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, LR2/h;-><init>()V

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Pattern;

    iput-object p1, p0, LR2/x;->b:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, LR2/x;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/CharSequence;)LR2/g;
    .locals 2

    new-instance v0, LR2/x$a;

    iget-object v1, p0, LR2/x;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-direct {v0, p1}, LR2/x$a;-><init>(Ljava/util/regex/Matcher;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LR2/x;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LR2/x;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
