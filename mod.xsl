<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.menu-list-icon">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-menu-list-icon" ox-mod="menu-list-icon">
            <ul>
                <xsl:for-each select="data/ui-entry/i">
                <li>
                    <a href="{href}">
                        <em>
                            <xsl:value-of select="title"/>
                        </em>
                        <sub>
                        	<xsl:if test="icon and icon != ''">
	                            <img class="icon" src="{icon}"/>
	                        </xsl:if>
                        </sub>
                    </a>
                </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
